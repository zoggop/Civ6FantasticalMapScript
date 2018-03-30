require "common"

Point = class(function(a, region, t, r, parentPoint, cloneParent)
	a.region = region
	a.t = t
	a.r = r
	a.generation = 0
	a.neighCount = 0
	if parentPoint then
		-- mutation
		if parentPoint.region.fixed or cloneParent then
			a.t = parentPoint.t + 0
			a.r = parentPoint.r + 0
			a.generation = parentPoint.generation + 0
		else
			local strength = parentPoint.pointSet.climate.mutationStrength
			a.t = mFloor( parentPoint.t + math.random(-strength, strength) )
			a.r = mFloor( parentPoint.r + math.random(-strength, strength) )
			a.t = mMax(0, mMin(100, a.t))
			a.r = mMax(0, mMin(100, a.r))
			a.generation = parentPoint.generation + 1
		end
	end
	a.superRegionAreas, a.superRegionLatitudeAreas = {}, {}
end)

function Point:ResetFillState()
	self.region.latitudeArea = 0
	self.latitudeArea = 0
	self.region.area = 0
	self.area = 0
	self.minT, self.maxT, self.minR, self.maxR = 100, 0, 100, 0
	self.neighbors = {}
	self.lowT, self.highT, self.lowR, self.highR = nil, nil, nil, nil
	self.superRegionAreas, self.superRegionLatitudeAreas = {}, {}
	self.region.superRegionAreas, self.region.superRegionLatitudeAreas = {}, {}
end

function Point:Dist(t, r)
	return TempRainDist(self.t, self.r, t, r)
end

function Point:Okay()
	for regionName, relation in pairs(self.region.relations) do
		local relatedRegion = self.pointSet.climate.regionsByName[regionName]
		if relatedRegion then
			for ii, rPoint in pairs(self.pointSet.points) do
				if rPoint.region == relatedRegion then
					if relation.t == -1 then
						if self.t >= rPoint.t then return false, "t above " .. rPoint.region.name end
					elseif relation.t == 1 then
						if self.t <= rPoint.t then return false, "t below " .. rPoint.region.name end
					end
					if relation.r == -1 then
						if self.r >= rPoint.r then return false, "r above " .. rPoint.region.name end
					elseif relation.r == 1 then
						if self.r <= rPoint.r then return false, "r below " .. rPoint.region.name end
					end
				end
			end
		end
	end
	return true
end

function Point:FillOkay()
	-- if self.region.noLowT and self.lowT then return false, "lowT" end
	-- if self.region.noHighT and self.highT then return false, "highT" end
	-- if self.region.noLowR and self.lowR then return false, "lowR" end
	-- if self.region.noHighR and self.highR then return false, "highR" end

	-- if self.region.lowT and not self.lowT then return false, "no lowT" end
	-- if self.region.highT and not self.highT then return false, "no highT" end
	-- if self.region.lowR and not self.lowR then return false, "no lowR" end
	-- if self.region.highR and not self.highR then return false, "no highR" end

	-- if self.region.maxR and self.maxR > self.region.maxR then return false, "maxR" end
	-- if self.region.minR and self.minR < self.region.minR then return false, "minR" end
	-- if self.region.maxT and self.maxT > self.region.maxT then return false, "maxT" end
	-- if self.region.minT and self.minT < self.region.minT then return false, "minT" end
	for regionName, relation in pairs(self.region.relations) do
		local relatedRegion = self.pointSet.climate.regionsByName[regionName]
		if relatedRegion then
			for ii, rPoint in pairs(self.pointSet.points) do
				if rPoint.region == relatedRegion then
					if relation.n == -1 then
						if self.neighbors[rPoint] then return false, "bad neighbor: " .. rPoint.region.name end
					end
				end
			end
		end
	end
	if self.region.contiguous then
		for i, point in pairs(self.pointSet.points) do
			if point ~= self and point.region == self.region then
 				if not point.neighbors[self] then return false, "not contiguous" end
			end
		end
	end
	if self.pointSet.isSub then
		for i, regionName in pairs(self.region.containedBy) do
			local region = self.pointSet.climate.regionsByName[regionName]
			if not self.region.superRegionAreas[region] and (self.region.stableArea or 0) > 0 then
				return false, "out of container region: " .. region.name
			end
		end
	end
	return true
end
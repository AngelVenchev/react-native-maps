//
//  AIRMapHeatmap.h
//  AirMaps
//
//  Created by Admin on 21/06/2017.
//  Copyright © 2017 Christopher. All rights reserved.
//

#import <Foundation/Foundation.h>

#import <MapKit/MapKit.h>
#import <UIKit/UIKit.h>

#import <ReactRCTConvert+AirMap.h>
#import <ReactRCTComponent.h>
#import "AIRMapWeightedPoint.h"

#import "AIRMap.h"
#import <ReactRCTView.h>

#import "DTMHeatmap.h"
#import "DTMHeatmapRenderer.h"

@interface AIRMapHeatmap: MKAnnotationView <MKOverlay>

@property (nonatomic, weak) AIRMap *map;

@property (nonatomic, strong) DTMHeatmap *heatmap;
@property (nonatomic, strong) MKOverlayRenderer *renderer;
@property (nonatomic, strong) NSArray<AIRMapWeightedPoint *> *points;

#pragma mark MKOverlay protocol

@property(nonatomic, readonly) CLLocationCoordinate2D coordinate;
@property(nonatomic, readonly) MKMapRect boundingMapRect;
- (BOOL)canReplaceMapContent;

@end

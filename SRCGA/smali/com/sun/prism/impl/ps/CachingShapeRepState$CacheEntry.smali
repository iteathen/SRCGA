.class Lcom/sun/prism/impl/ps/CachingShapeRepState$CacheEntry;
.super Ljava/lang/Object;
.source "CachingShapeRep.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/prism/impl/ps/CachingShapeRepState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CacheEntry"
.end annotation


# instance fields
.field antialiasedShape:Z

.field refCount:I

.field shape:Lcom/sun/javafx/geom/Shape;

.field stroke:Lcom/sun/prism/BasicStroke;

.field texData:Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;

.field xform:Lcom/sun/javafx/geom/transform/BaseTransform;

.field xformBounds:Lcom/sun/javafx/geom/RectBounds;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 169
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/ps/CachingShapeRepState$CacheEntry;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sun/prism/impl/ps/CachingShapeRepState$1;)V
    .locals 3

    .prologue
    .line 169
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/ps/CachingShapeRepState$CacheEntry;
    move-object v1, p1

    .local v1, "x0":Lcom/sun/prism/impl/ps/CachingShapeRepState$1;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/prism/impl/ps/CachingShapeRepState$CacheEntry;-><init>()V

    return-void
.end method

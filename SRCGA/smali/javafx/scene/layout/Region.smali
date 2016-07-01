.class public Ljavafx/scene/layout/Region;
.super Ljavafx/scene/Parent;
.source "Region.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavafx/scene/layout/Region$StyleableProperties;,
        Ljavafx/scene/layout/Region$ShapeProperty;,
        Ljavafx/scene/layout/Region$MinPrefMaxProperty;,
        Ljavafx/scene/layout/Region$InsetsProperty;
    }
.end annotation


# static fields
.field static TEMP_VEC2D:Lcom/sun/javafx/geom/Vec2d; = null

.field public static final USE_COMPUTED_SIZE:D = -1.0

.field public static final USE_PREF_SIZE:D = -Infinity


# instance fields
.field private _height:D

.field private _maxHeight:D

.field private _maxWidth:D

.field private _minHeight:D

.field private _minWidth:D

.field private _prefHeight:D

.field private _prefWidth:D

.field private _shape:Ljavafx/scene/shape/Shape;

.field private _snapToPixel:Z

.field private _width:D

.field private final background:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/layout/Background;",
            ">;"
        }
    .end annotation
.end field

.field private final border:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/layout/Border;",
            ">;"
        }
    .end annotation
.end field

.field private boundingBox:Ljavafx/geometry/Bounds;

.field private cacheShape:Ljavafx/beans/property/BooleanProperty;

.field private centerShape:Ljavafx/beans/property/BooleanProperty;

.field private cornersValid:Z

.field private height:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

.field private imageChangeListener:Ljavafx/beans/InvalidationListener;

.field private final insets:Ljavafx/scene/layout/Region$InsetsProperty;

.field private maxHeight:Ljavafx/beans/property/DoubleProperty;

.field private maxWidth:Ljavafx/beans/property/DoubleProperty;

.field private minHeight:Ljavafx/beans/property/DoubleProperty;

.field private minWidth:Ljavafx/beans/property/DoubleProperty;

.field private normalizedFillCorners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljavafx/scene/layout/CornerRadii;",
            ">;"
        }
    .end annotation
.end field

.field private normalizedStrokeCorners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljavafx/scene/layout/CornerRadii;",
            ">;"
        }
    .end annotation
.end field

.field private opaqueInsets:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/geometry/Insets;",
            ">;"
        }
    .end annotation
.end field

.field private padding:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/geometry/Insets;",
            ">;"
        }
    .end annotation
.end field

.field private prefHeight:Ljavafx/beans/property/DoubleProperty;

.field private prefWidth:Ljavafx/beans/property/DoubleProperty;

.field private scaleShape:Ljavafx/beans/property/BooleanProperty;

.field private shape:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/shape/Shape;",
            ">;"
        }
    .end annotation
.end field

.field private snapToPixel:Ljavafx/beans/property/BooleanProperty;

.field private snappedBottomInset:D

.field private snappedLeftInset:D

.field private snappedRightInset:D

.field private snappedTopInset:D

.field private width:Ljavafx/beans/property/ReadOnlyDoubleWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 172
    new-instance v0, Lcom/sun/javafx/geom/Vec2d;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/sun/javafx/geom/Vec2d;-><init>()V

    sput-object v0, Ljavafx/scene/layout/Region;->TEMP_VEC2D:Lcom/sun/javafx/geom/Vec2d;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    .line 457
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Region;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/Parent;-><init>()V

    .line 437
    move-object v1, v0

    move-object v2, v0

    invoke-static {v2}, Ljavafx/scene/layout/Region$$Lambda$2;->lambdaFactory$(Ljavafx/scene/layout/Region;)Ljavafx/beans/InvalidationListener;

    move-result-object v2

    iput-object v2, v1, Ljavafx/scene/layout/Region;->imageChangeListener:Ljavafx/beans/InvalidationListener;

    .line 482
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Ljavafx/scene/layout/Region;->_snapToPixel:Z

    .line 525
    move-object v1, v0

    new-instance v2, Ljavafx/scene/layout/Region$2;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    sget-object v5, Ljavafx/geometry/Insets;->EMPTY:Ljavafx/geometry/Insets;

    invoke-direct {v3, v4, v5}, Ljavafx/scene/layout/Region$2;-><init>(Ljavafx/scene/layout/Region;Ljavafx/geometry/Insets;)V

    iput-object v2, v1, Ljavafx/scene/layout/Region;->padding:Ljavafx/beans/property/ObjectProperty;

    .line 569
    move-object v1, v0

    new-instance v2, Ljavafx/scene/layout/Region$3;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Ljavafx/scene/layout/Region$3;-><init>(Ljavafx/scene/layout/Region;Ljavafx/scene/layout/Background;)V

    iput-object v2, v1, Ljavafx/scene/layout/Region;->background:Ljavafx/beans/property/ObjectProperty;

    .line 627
    move-object v1, v0

    new-instance v2, Ljavafx/scene/layout/Region$4;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Ljavafx/scene/layout/Region$4;-><init>(Ljavafx/scene/layout/Region;Ljavafx/scene/layout/Border;)V

    iput-object v2, v1, Ljavafx/scene/layout/Region;->border:Ljavafx/beans/property/ObjectProperty;

    .line 743
    move-object v1, v0

    new-instance v2, Ljavafx/scene/layout/Region$InsetsProperty;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Ljavafx/scene/layout/Region$InsetsProperty;-><init>(Ljavafx/scene/layout/Region;Ljavafx/scene/layout/Region$1;)V

    iput-object v2, v1, Ljavafx/scene/layout/Region;->insets:Ljavafx/scene/layout/Region$InsetsProperty;

    .line 813
    move-object v1, v0

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Ljavafx/scene/layout/Region;->snappedTopInset:D

    .line 814
    move-object v1, v0

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Ljavafx/scene/layout/Region;->snappedRightInset:D

    .line 815
    move-object v1, v0

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Ljavafx/scene/layout/Region;->snappedBottomInset:D

    .line 816
    move-object v1, v0

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Ljavafx/scene/layout/Region;->snappedLeftInset:D

    .line 1000
    move-object v1, v0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    iput-wide v2, v1, Ljavafx/scene/layout/Region;->_minWidth:D

    .line 1030
    move-object v1, v0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    iput-wide v2, v1, Ljavafx/scene/layout/Region;->_minHeight:D

    .line 1070
    move-object v1, v0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    iput-wide v2, v1, Ljavafx/scene/layout/Region;->_prefWidth:D

    .line 1095
    move-object v1, v0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    iput-wide v2, v1, Ljavafx/scene/layout/Region;->_prefHeight:D

    .line 1139
    move-object v1, v0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    iput-wide v2, v1, Ljavafx/scene/layout/Region;->_maxWidth:D

    .line 1168
    move-object v1, v0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    iput-wide v2, v1, Ljavafx/scene/layout/Region;->_maxHeight:D

    .line 1210
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Ljavafx/scene/layout/Region;->shape:Ljavafx/beans/property/ObjectProperty;

    .line 1265
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Ljavafx/scene/layout/Region;->scaleShape:Ljavafx/beans/property/BooleanProperty;

    .line 1294
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Ljavafx/scene/layout/Region;->centerShape:Ljavafx/beans/property/BooleanProperty;

    .line 1322
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Ljavafx/scene/layout/Region;->cacheShape:Ljavafx/beans/property/BooleanProperty;

    .line 458
    move-object v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljavafx/scene/layout/Region;->setPickOnBounds(Z)V

    .line 459
    return-void
.end method

.method static synthetic access$100(Ljavafx/scene/layout/Region;)Z
    .locals 2

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/layout/Region;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/layout/Region;->_snapToPixel:Z

    move v0, v1

    .end local v0    # "x0":Ljavafx/scene/layout/Region;
    return v0
.end method

.method static synthetic access$102(Ljavafx/scene/layout/Region;Z)Z
    .locals 7

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/layout/Region;
    move v1, p1

    .local v1, "x1":Z
    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput-boolean v4, v3, Ljavafx/scene/layout/Region;->_snapToPixel:Z

    move v0, v2

    .end local v0    # "x0":Ljavafx/scene/layout/Region;
    return v0
.end method

.method static synthetic access$1100(Ljavafx/scene/layout/Region;)V
    .locals 2

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/layout/Region;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/layout/Region;->impl_geomChanged()V

    return-void
.end method

.method static synthetic access$1200(Ljavafx/scene/layout/Region;Lcom/sun/javafx/scene/DirtyBits;)V
    .locals 4

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/layout/Region;
    move-object v1, p1

    .local v1, "x1":Lcom/sun/javafx/scene/DirtyBits;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/layout/Region;->impl_markDirty(Lcom/sun/javafx/scene/DirtyBits;)V

    return-void
.end method

.method static synthetic access$1400(Ljavafx/scene/layout/Region;Lcom/sun/javafx/scene/DirtyBits;)V
    .locals 4

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/layout/Region;
    move-object v1, p1

    .local v1, "x1":Lcom/sun/javafx/scene/DirtyBits;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/layout/Region;->impl_markDirty(Lcom/sun/javafx/scene/DirtyBits;)V

    return-void
.end method

.method static synthetic access$1600(Ljavafx/scene/layout/Region;)Ljavafx/scene/shape/Shape;
    .locals 2

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/layout/Region;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/Region;->_shape:Ljavafx/scene/shape/Shape;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/layout/Region;
    return-object v0
.end method

.method static synthetic access$1602(Ljavafx/scene/layout/Region;Ljavafx/scene/shape/Shape;)Ljavafx/scene/shape/Shape;
    .locals 7

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/layout/Region;
    move-object v1, p1

    .local v1, "x1":Ljavafx/scene/shape/Shape;
    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Ljavafx/scene/layout/Region;->_shape:Ljavafx/scene/shape/Shape;

    move-object v0, v2

    .end local v0    # "x0":Ljavafx/scene/layout/Region;
    return-object v0
.end method

.method static synthetic access$1700(Ljavafx/scene/layout/Region;D)V
    .locals 7

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/layout/Region;
    move-wide v1, p1

    .local v1, "x1":D
    move-object v3, v0

    move-wide v4, v1

    invoke-direct {v3, v4, v5}, Ljavafx/scene/layout/Region;->widthChanged(D)V

    return-void
.end method

.method static synthetic access$1800(Ljavafx/scene/layout/Region;D)V
    .locals 7

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/layout/Region;
    move-wide v1, p1

    .local v1, "x1":D
    move-object v3, v0

    move-wide v4, v1

    invoke-direct {v3, v4, v5}, Ljavafx/scene/layout/Region;->heightChanged(D)V

    return-void
.end method

.method static synthetic access$1900(Ljavafx/scene/layout/Region;)V
    .locals 2

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/layout/Region;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/layout/Region;->requestParentLayout()V

    return-void
.end method

.method static synthetic access$200(Ljavafx/scene/layout/Region;)V
    .locals 2

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/layout/Region;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/layout/Region;->updateSnappedInsets()V

    return-void
.end method

.method static synthetic access$2800(Ljavafx/scene/layout/Region;)V
    .locals 2

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/layout/Region;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/layout/Region;->impl_geomChanged()V

    return-void
.end method

.method static synthetic access$2900(Ljavafx/scene/layout/Region;Lcom/sun/javafx/scene/DirtyBits;)V
    .locals 4

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/layout/Region;
    move-object v1, p1

    .local v1, "x1":Lcom/sun/javafx/scene/DirtyBits;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/layout/Region;->impl_markDirty(Lcom/sun/javafx/scene/DirtyBits;)V

    return-void
.end method

.method static synthetic access$300(Ljavafx/scene/layout/Region;)V
    .locals 2

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/layout/Region;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/layout/Region;->requestParentLayout()V

    return-void
.end method

.method static synthetic access$3100(Ljavafx/scene/layout/Region;)V
    .locals 2

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/layout/Region;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/layout/Region;->impl_geomChanged()V

    return-void
.end method

.method static synthetic access$3200(Ljavafx/scene/layout/Region;Lcom/sun/javafx/scene/DirtyBits;)V
    .locals 4

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/layout/Region;
    move-object v1, p1

    .local v1, "x1":Lcom/sun/javafx/scene/DirtyBits;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/layout/Region;->impl_markDirty(Lcom/sun/javafx/scene/DirtyBits;)V

    return-void
.end method

.method static synthetic access$3400(Ljavafx/scene/layout/Region;)V
    .locals 2

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/layout/Region;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/layout/Region;->impl_geomChanged()V

    return-void
.end method

.method static synthetic access$3500(Ljavafx/scene/layout/Region;Lcom/sun/javafx/scene/DirtyBits;)V
    .locals 4

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/layout/Region;
    move-object v1, p1

    .local v1, "x1":Lcom/sun/javafx/scene/DirtyBits;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/layout/Region;->impl_markDirty(Lcom/sun/javafx/scene/DirtyBits;)V

    return-void
.end method

.method static synthetic access$3700(Ljavafx/scene/layout/Region;)Ljavafx/beans/property/ObjectProperty;
    .locals 2

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/layout/Region;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/Region;->padding:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/layout/Region;
    return-object v0
.end method

.method static synthetic access$3800(Ljavafx/scene/layout/Region;)Ljavafx/beans/property/ObjectProperty;
    .locals 2

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/layout/Region;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/Region;->opaqueInsets:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/layout/Region;
    return-object v0
.end method

.method static synthetic access$3900(Ljavafx/scene/layout/Region;)Ljavafx/beans/property/ObjectProperty;
    .locals 2

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/layout/Region;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/Region;->background:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/layout/Region;
    return-object v0
.end method

.method static synthetic access$4000(Ljavafx/scene/layout/Region;)Ljavafx/beans/property/ObjectProperty;
    .locals 2

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/layout/Region;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/Region;->border:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/layout/Region;
    return-object v0
.end method

.method static synthetic access$4100(Ljavafx/scene/layout/Region;)Ljavafx/beans/property/ObjectProperty;
    .locals 2

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/layout/Region;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/Region;->shape:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/layout/Region;
    return-object v0
.end method

.method static synthetic access$4200(Ljavafx/scene/layout/Region;)Ljavafx/beans/property/BooleanProperty;
    .locals 2

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/layout/Region;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/Region;->scaleShape:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/layout/Region;
    return-object v0
.end method

.method static synthetic access$4300(Ljavafx/scene/layout/Region;)Ljavafx/beans/property/BooleanProperty;
    .locals 2

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/layout/Region;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/Region;->centerShape:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/layout/Region;
    return-object v0
.end method

.method static synthetic access$4400(Ljavafx/scene/layout/Region;)Ljavafx/beans/property/BooleanProperty;
    .locals 2

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/layout/Region;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/Region;->cacheShape:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/layout/Region;
    return-object v0
.end method

.method static synthetic access$4500(Ljavafx/scene/layout/Region;)Ljavafx/beans/property/BooleanProperty;
    .locals 2

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/layout/Region;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/Region;->snapToPixel:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/layout/Region;
    return-object v0
.end method

.method static synthetic access$4600(Ljavafx/scene/layout/Region;)Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/layout/Region;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/Region;->minHeight:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/layout/Region;
    return-object v0
.end method

.method static synthetic access$4700(Ljavafx/scene/layout/Region;)Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/layout/Region;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/Region;->prefHeight:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/layout/Region;
    return-object v0
.end method

.method static synthetic access$4800(Ljavafx/scene/layout/Region;)Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/layout/Region;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/Region;->maxHeight:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/layout/Region;
    return-object v0
.end method

.method static synthetic access$4900(Ljavafx/scene/layout/Region;)Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/layout/Region;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/Region;->minWidth:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/layout/Region;
    return-object v0
.end method

.method static synthetic access$500(Ljavafx/scene/layout/Region;)Ljavafx/scene/layout/Region$InsetsProperty;
    .locals 2

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/layout/Region;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/Region;->insets:Ljavafx/scene/layout/Region$InsetsProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/layout/Region;
    return-object v0
.end method

.method static synthetic access$5000(Ljavafx/scene/layout/Region;)Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/layout/Region;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/Region;->prefWidth:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/layout/Region;
    return-object v0
.end method

.method static synthetic access$5100(Ljavafx/scene/layout/Region;)Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/layout/Region;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/Region;->maxWidth:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/layout/Region;
    return-object v0
.end method

.method static synthetic access$700(Ljavafx/scene/layout/Region;)V
    .locals 2

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/layout/Region;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/layout/Region;->impl_geomChanged()V

    return-void
.end method

.method static synthetic access$800(Ljavafx/scene/layout/Region;Lcom/sun/javafx/scene/DirtyBits;)V
    .locals 4

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/layout/Region;
    move-object v1, p1

    .local v1, "x1":Lcom/sun/javafx/scene/DirtyBits;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/layout/Region;->impl_markDirty(Lcom/sun/javafx/scene/DirtyBits;)V

    return-void
.end method

.method static synthetic access$902(Ljavafx/scene/layout/Region;Z)Z
    .locals 7

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/layout/Region;
    move v1, p1

    .local v1, "x1":Z
    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput-boolean v4, v3, Ljavafx/scene/layout/Region;->cornersValid:Z

    move v0, v2

    .end local v0    # "x0":Ljavafx/scene/layout/Region;
    return v0
.end method

.method static synthetic access$lambda$0(ZLjava/lang/Integer;)Ljava/lang/Boolean;
    .locals 4

    move v0, p0

    move-object v1, p1

    move v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Ljavafx/scene/layout/Region;->lambda$getAreaBaselineOffset$499(ZLjava/lang/Integer;)Ljava/lang/Boolean;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method static synthetic access$lambda$1(Ljavafx/scene/layout/Region;Ljavafx/beans/Observable;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/layout/Region;->lambda$new$500(Ljavafx/beans/Observable;)V

    return-void
.end method

.method static boundedNodeSizeWithBias(Ljavafx/scene/Node;DDZZLcom/sun/javafx/geom/Vec2d;)Lcom/sun/javafx/geom/Vec2d;
    .locals 23

    .prologue
    .line 1902
    move-object/from16 v1, p0

    .local v1, "node":Ljavafx/scene/Node;
    move-wide/from16 v2, p1

    .local v2, "areaWidth":D
    move-wide/from16 v4, p3

    .local v4, "areaHeight":D
    move/from16 v6, p5

    .local v6, "fillWidth":Z
    move/from16 v7, p6

    .local v7, "fillHeight":Z
    move-object/from16 v8, p7

    .local v8, "result":Lcom/sun/javafx/geom/Vec2d;
    move-object v14, v8

    if-nez v14, :cond_0

    .line 1903
    new-instance v14, Lcom/sun/javafx/geom/Vec2d;

    move-object/from16 v21, v14

    move-object/from16 v14, v21

    move-object/from16 v15, v21

    invoke-direct {v15}, Lcom/sun/javafx/geom/Vec2d;-><init>()V

    move-object v8, v14

    .line 1906
    :cond_0
    move-object v14, v1

    invoke-virtual {v14}, Ljavafx/scene/Node;->getContentBias()Ljavafx/geometry/Orientation;

    move-result-object v14

    move-object v9, v14

    .line 1908
    .local v9, "bias":Ljavafx/geometry/Orientation;
    const-wide/16 v14, 0x0

    move-wide v10, v14

    .line 1909
    .local v10, "childWidth":D
    const-wide/16 v14, 0x0

    move-wide v12, v14

    .line 1911
    .local v12, "childHeight":D
    move-object v14, v9

    if-nez v14, :cond_3

    .line 1912
    move-object v14, v1

    const-wide/high16 v15, -0x4010000000000000L    # -1.0

    .line 1913
    invoke-virtual/range {v14 .. v16}, Ljavafx/scene/Node;->minWidth(D)D

    move-result-wide v14

    move/from16 v16, v6

    if-eqz v16, :cond_1

    move-wide/from16 v16, v2

    .line 1914
    :goto_0
    move-object/from16 v18, v1

    const-wide/high16 v19, -0x4010000000000000L    # -1.0

    .line 1915
    invoke-virtual/range {v18 .. v20}, Ljavafx/scene/Node;->maxWidth(D)D

    move-result-wide v18

    .line 1912
    invoke-static/range {v14 .. v19}, Ljavafx/scene/layout/Region;->boundedSize(DDD)D

    move-result-wide v14

    move-wide v10, v14

    .line 1916
    move-object v14, v1

    const-wide/high16 v15, -0x4010000000000000L    # -1.0

    .line 1917
    invoke-virtual/range {v14 .. v16}, Ljavafx/scene/Node;->minHeight(D)D

    move-result-wide v14

    move/from16 v16, v7

    if-eqz v16, :cond_2

    move-wide/from16 v16, v4

    .line 1918
    :goto_1
    move-object/from16 v18, v1

    const-wide/high16 v19, -0x4010000000000000L    # -1.0

    .line 1919
    invoke-virtual/range {v18 .. v20}, Ljavafx/scene/Node;->maxHeight(D)D

    move-result-wide v18

    .line 1916
    invoke-static/range {v14 .. v19}, Ljavafx/scene/layout/Region;->boundedSize(DDD)D

    move-result-wide v14

    move-wide v12, v14

    .line 1942
    :goto_2
    move-object v14, v8

    move-wide v15, v10

    move-wide/from16 v17, v12

    invoke-virtual/range {v14 .. v18}, Lcom/sun/javafx/geom/Vec2d;->set(DD)V

    .line 1943
    move-object v14, v8

    move-object v1, v14

    .end local v1    # "node":Ljavafx/scene/Node;
    return-object v1

    .line 1913
    .restart local v1    # "node":Ljavafx/scene/Node;
    :cond_1
    move-wide/from16 v16, v2

    move-object/from16 v18, v1

    const-wide/high16 v19, -0x4010000000000000L    # -1.0

    .line 1914
    invoke-virtual/range {v18 .. v20}, Ljavafx/scene/Node;->prefWidth(D)D

    move-result-wide v18

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->min(DD)D

    move-result-wide v16

    goto :goto_0

    .line 1917
    :cond_2
    move-wide/from16 v16, v4

    move-object/from16 v18, v1

    const-wide/high16 v19, -0x4010000000000000L    # -1.0

    .line 1918
    invoke-virtual/range {v18 .. v20}, Ljavafx/scene/Node;->prefHeight(D)D

    move-result-wide v18

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->min(DD)D

    move-result-wide v16

    goto :goto_1

    .line 1921
    :cond_3
    move-object v14, v9

    sget-object v15, Ljavafx/geometry/Orientation;->HORIZONTAL:Ljavafx/geometry/Orientation;

    if-ne v14, v15, :cond_6

    .line 1922
    move-object v14, v1

    const-wide/high16 v15, -0x4010000000000000L    # -1.0

    .line 1923
    invoke-virtual/range {v14 .. v16}, Ljavafx/scene/Node;->minWidth(D)D

    move-result-wide v14

    move/from16 v16, v6

    if-eqz v16, :cond_4

    move-wide/from16 v16, v2

    .line 1924
    :goto_3
    move-object/from16 v18, v1

    const-wide/high16 v19, -0x4010000000000000L    # -1.0

    .line 1925
    invoke-virtual/range {v18 .. v20}, Ljavafx/scene/Node;->maxWidth(D)D

    move-result-wide v18

    .line 1922
    invoke-static/range {v14 .. v19}, Ljavafx/scene/layout/Region;->boundedSize(DDD)D

    move-result-wide v14

    move-wide v10, v14

    .line 1926
    move-object v14, v1

    move-wide v15, v10

    .line 1927
    invoke-virtual/range {v14 .. v16}, Ljavafx/scene/Node;->minHeight(D)D

    move-result-wide v14

    move/from16 v16, v7

    if-eqz v16, :cond_5

    move-wide/from16 v16, v4

    .line 1928
    :goto_4
    move-object/from16 v18, v1

    move-wide/from16 v19, v10

    .line 1929
    invoke-virtual/range {v18 .. v20}, Ljavafx/scene/Node;->maxHeight(D)D

    move-result-wide v18

    .line 1926
    invoke-static/range {v14 .. v19}, Ljavafx/scene/layout/Region;->boundedSize(DDD)D

    move-result-wide v14

    move-wide v12, v14

    goto :goto_2

    .line 1923
    :cond_4
    move-wide/from16 v16, v2

    move-object/from16 v18, v1

    const-wide/high16 v19, -0x4010000000000000L    # -1.0

    .line 1924
    invoke-virtual/range {v18 .. v20}, Ljavafx/scene/Node;->prefWidth(D)D

    move-result-wide v18

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->min(DD)D

    move-result-wide v16

    goto :goto_3

    .line 1927
    :cond_5
    move-wide/from16 v16, v4

    move-object/from16 v18, v1

    move-wide/from16 v19, v10

    .line 1928
    invoke-virtual/range {v18 .. v20}, Ljavafx/scene/Node;->prefHeight(D)D

    move-result-wide v18

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->min(DD)D

    move-result-wide v16

    goto :goto_4

    .line 1932
    :cond_6
    move-object v14, v1

    const-wide/high16 v15, -0x4010000000000000L    # -1.0

    .line 1933
    invoke-virtual/range {v14 .. v16}, Ljavafx/scene/Node;->minHeight(D)D

    move-result-wide v14

    move/from16 v16, v7

    if-eqz v16, :cond_7

    move-wide/from16 v16, v4

    .line 1934
    :goto_5
    move-object/from16 v18, v1

    const-wide/high16 v19, -0x4010000000000000L    # -1.0

    .line 1935
    invoke-virtual/range {v18 .. v20}, Ljavafx/scene/Node;->maxHeight(D)D

    move-result-wide v18

    .line 1932
    invoke-static/range {v14 .. v19}, Ljavafx/scene/layout/Region;->boundedSize(DDD)D

    move-result-wide v14

    move-wide v12, v14

    .line 1936
    move-object v14, v1

    move-wide v15, v12

    .line 1937
    invoke-virtual/range {v14 .. v16}, Ljavafx/scene/Node;->minWidth(D)D

    move-result-wide v14

    move/from16 v16, v6

    if-eqz v16, :cond_8

    move-wide/from16 v16, v2

    .line 1938
    :goto_6
    move-object/from16 v18, v1

    move-wide/from16 v19, v12

    .line 1939
    invoke-virtual/range {v18 .. v20}, Ljavafx/scene/Node;->maxWidth(D)D

    move-result-wide v18

    .line 1936
    invoke-static/range {v14 .. v19}, Ljavafx/scene/layout/Region;->boundedSize(DDD)D

    move-result-wide v14

    move-wide v10, v14

    goto/16 :goto_2

    .line 1933
    :cond_7
    move-wide/from16 v16, v4

    move-object/from16 v18, v1

    const-wide/high16 v19, -0x4010000000000000L    # -1.0

    .line 1934
    invoke-virtual/range {v18 .. v20}, Ljavafx/scene/Node;->prefHeight(D)D

    move-result-wide v18

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->min(DD)D

    move-result-wide v16

    goto :goto_5

    .line 1937
    :cond_8
    move-wide/from16 v16, v2

    move-object/from16 v18, v1

    move-wide/from16 v19, v12

    .line 1938
    invoke-virtual/range {v18 .. v20}, Ljavafx/scene/Node;->prefWidth(D)D

    move-result-wide v18

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->min(DD)D

    move-result-wide v16

    goto :goto_6
.end method

.method static boundedSize(DDD)D
    .locals 14

    .prologue
    .line 202
    move-wide v0, p0

    .local v0, "min":D
    move-wide/from16 v2, p2

    .local v2, "pref":D
    move-wide/from16 v4, p4

    .local v4, "max":D
    move-wide v10, v2

    move-wide v12, v0

    cmpl-double v10, v10, v12

    if-ltz v10, :cond_0

    move-wide v10, v2

    :goto_0
    move-wide v6, v10

    .line 203
    .local v6, "a":D
    move-wide v10, v0

    move-wide v12, v4

    cmpl-double v10, v10, v12

    if-ltz v10, :cond_1

    move-wide v10, v0

    :goto_1
    move-wide v8, v10

    .line 204
    .local v8, "b":D
    move-wide v10, v6

    move-wide v12, v8

    cmpg-double v10, v10, v12

    if-gtz v10, :cond_2

    move-wide v10, v6

    :goto_2
    move-wide v0, v10

    .end local v0    # "min":D
    return-wide v0

    .line 202
    .end local v6    # "a":D
    .end local v8    # "b":D
    .restart local v0    # "min":D
    :cond_0
    move-wide v10, v0

    goto :goto_0

    .line 203
    .restart local v6    # "a":D
    :cond_1
    move-wide v10, v4

    goto :goto_1

    .line 204
    .restart local v8    # "b":D
    :cond_2
    move-wide v10, v8

    goto :goto_2
.end method

.method private computeShapeBounds(Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;
    .locals 28

    .prologue
    .line 2976
    move-object/from16 v3, p0

    .local v3, "this":Ljavafx/scene/layout/Region;
    move-object/from16 v4, p1

    .local v4, "bounds":Lcom/sun/javafx/geom/BaseBounds;
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavafx/scene/layout/Region;->_shape:Ljavafx/scene/shape/Shape;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/shape/Shape;->impl_configShape()Lcom/sun/javafx/geom/Shape;

    move-result-object v18

    move-object/from16 v5, v18

    .line 2978
    .local v5, "s":Lcom/sun/javafx/geom/Shape;
    const/16 v18, 0x4

    move/from16 v0, v18

    new-array v0, v0, [F

    move-object/from16 v18, v0

    fill-array-data v18, :array_0

    move-object/from16 v6, v18

    .line 2983
    .local v6, "bbox":[F
    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/layout/Region;->getBackground()Ljavafx/scene/layout/Background;

    move-result-object v18

    move-object/from16 v7, v18

    .line 2984
    .local v7, "bg":Ljavafx/scene/layout/Background;
    move-object/from16 v18, v7

    if-eqz v18, :cond_0

    .line 2985
    move-object/from16 v18, v5

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/geom/Shape;->getBounds()Lcom/sun/javafx/geom/RectBounds;

    move-result-object v18

    move-object/from16 v8, v18

    .line 2986
    .local v8, "sBounds":Lcom/sun/javafx/geom/RectBounds;
    move-object/from16 v18, v7

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/layout/Background;->getOutsets()Ljavafx/geometry/Insets;

    move-result-object v18

    move-object/from16 v9, v18

    .line 2987
    .local v9, "bgOutsets":Ljavafx/geometry/Insets;
    move-object/from16 v18, v6

    const/16 v19, 0x0

    move-object/from16 v20, v8

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/geom/RectBounds;->getMinX()F

    move-result v20

    move-object/from16 v21, v9

    invoke-virtual/range {v21 .. v21}, Ljavafx/geometry/Insets;->getLeft()D

    move-result-wide v21

    move-wide/from16 v0, v21

    double-to-float v0, v0

    move/from16 v21, v0

    sub-float v20, v20, v21

    aput v20, v18, v19

    .line 2988
    move-object/from16 v18, v6

    const/16 v19, 0x1

    move-object/from16 v20, v8

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/geom/RectBounds;->getMinY()F

    move-result v20

    move-object/from16 v21, v9

    invoke-virtual/range {v21 .. v21}, Ljavafx/geometry/Insets;->getTop()D

    move-result-wide v21

    move-wide/from16 v0, v21

    double-to-float v0, v0

    move/from16 v21, v0

    sub-float v20, v20, v21

    aput v20, v18, v19

    .line 2989
    move-object/from16 v18, v6

    const/16 v19, 0x2

    move-object/from16 v20, v8

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/geom/RectBounds;->getMaxX()F

    move-result v20

    move-object/from16 v21, v9

    invoke-virtual/range {v21 .. v21}, Ljavafx/geometry/Insets;->getBottom()D

    move-result-wide v21

    move-wide/from16 v0, v21

    double-to-float v0, v0

    move/from16 v21, v0

    add-float v20, v20, v21

    aput v20, v18, v19

    .line 2990
    move-object/from16 v18, v6

    const/16 v19, 0x3

    move-object/from16 v20, v8

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/geom/RectBounds;->getMaxY()F

    move-result v20

    move-object/from16 v21, v9

    invoke-virtual/range {v21 .. v21}, Ljavafx/geometry/Insets;->getRight()D

    move-result-wide v21

    move-wide/from16 v0, v21

    double-to-float v0, v0

    move/from16 v21, v0

    add-float v20, v20, v21

    aput v20, v18, v19

    .line 2993
    .end local v8    # "sBounds":Lcom/sun/javafx/geom/RectBounds;
    .end local v9    # "bgOutsets":Ljavafx/geometry/Insets;
    :cond_0
    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/layout/Region;->getBorder()Ljavafx/scene/layout/Border;

    move-result-object v18

    move-object/from16 v8, v18

    .line 2994
    .local v8, "b":Ljavafx/scene/layout/Border;
    move-object/from16 v18, v8

    if-eqz v18, :cond_7

    move-object/from16 v18, v8

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/layout/Border;->getStrokes()Ljava/util/List;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v18

    if-lez v18, :cond_7

    .line 2995
    move-object/from16 v18, v8

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/layout/Border;->getStrokes()Ljava/util/List;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    move-object/from16 v9, v18

    :cond_1
    :goto_0
    move-object/from16 v18, v9

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_7

    move-object/from16 v18, v9

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljavafx/scene/layout/BorderStroke;

    move-object/from16 v10, v18

    .line 2997
    .local v10, "bs":Ljavafx/scene/layout/BorderStroke;
    move-object/from16 v18, v10

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/layout/BorderStroke;->getTopStyle()Ljavafx/scene/layout/BorderStrokeStyle;

    move-result-object v18

    if-eqz v18, :cond_2

    move-object/from16 v18, v10

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/layout/BorderStroke;->getTopStyle()Ljavafx/scene/layout/BorderStrokeStyle;

    move-result-object v18

    .line 3000
    :goto_1
    move-object/from16 v11, v18

    .line 3002
    .local v11, "bss":Ljavafx/scene/layout/BorderStrokeStyle;
    move-object/from16 v18, v11

    if-eqz v18, :cond_1

    move-object/from16 v18, v11

    sget-object v19, Ljavafx/scene/layout/BorderStrokeStyle;->NONE:Ljavafx/scene/layout/BorderStrokeStyle;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_6

    .line 3003
    goto :goto_0

    .line 2997
    .end local v11    # "bss":Ljavafx/scene/layout/BorderStrokeStyle;
    :cond_2
    move-object/from16 v18, v10

    .line 2998
    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/layout/BorderStroke;->getLeftStyle()Ljavafx/scene/layout/BorderStrokeStyle;

    move-result-object v18

    if-eqz v18, :cond_3

    move-object/from16 v18, v10

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/layout/BorderStroke;->getLeftStyle()Ljavafx/scene/layout/BorderStrokeStyle;

    move-result-object v18

    goto :goto_1

    :cond_3
    move-object/from16 v18, v10

    .line 2999
    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/layout/BorderStroke;->getBottomStyle()Ljavafx/scene/layout/BorderStrokeStyle;

    move-result-object v18

    if-eqz v18, :cond_4

    move-object/from16 v18, v10

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/layout/BorderStroke;->getBottomStyle()Ljavafx/scene/layout/BorderStrokeStyle;

    move-result-object v18

    goto :goto_1

    :cond_4
    move-object/from16 v18, v10

    .line 3000
    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/layout/BorderStroke;->getRightStyle()Ljavafx/scene/layout/BorderStrokeStyle;

    move-result-object v18

    if-eqz v18, :cond_5

    move-object/from16 v18, v10

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/layout/BorderStroke;->getRightStyle()Ljavafx/scene/layout/BorderStrokeStyle;

    move-result-object v18

    goto :goto_1

    :cond_5
    const/16 v18, 0x0

    goto :goto_1

    .line 3006
    .restart local v11    # "bss":Ljavafx/scene/layout/BorderStrokeStyle;
    :cond_6
    move-object/from16 v18, v11

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/layout/BorderStrokeStyle;->getType()Ljavafx/scene/shape/StrokeType;

    move-result-object v18

    move-object/from16 v12, v18

    .line 3007
    .local v12, "type":Ljavafx/scene/shape/StrokeType;
    move-object/from16 v18, v10

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/layout/BorderStroke;->getWidths()Ljavafx/scene/layout/BorderWidths;

    move-result-object v18

    move-object/from16 v0, v18

    iget-wide v0, v0, Ljavafx/scene/layout/BorderWidths;->top:D

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x0

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->max(DD)D

    move-result-wide v18

    move-wide/from16 v13, v18

    .line 3008
    .local v13, "sw":D
    move-object/from16 v18, v11

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/layout/BorderStrokeStyle;->getLineCap()Ljavafx/scene/shape/StrokeLineCap;

    move-result-object v18

    move-object/from16 v15, v18

    .line 3009
    .local v15, "cap":Ljavafx/scene/shape/StrokeLineCap;
    move-object/from16 v18, v11

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/layout/BorderStrokeStyle;->getLineJoin()Ljavafx/scene/shape/StrokeLineJoin;

    move-result-object v18

    move-object/from16 v16, v18

    .line 3010
    .local v16, "join":Ljavafx/scene/shape/StrokeLineJoin;
    move-object/from16 v18, v11

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/layout/BorderStrokeStyle;->getMiterLimit()D

    move-result-wide v18

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->max(DD)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v18, v0

    move/from16 v17, v18

    .line 3011
    .local v17, "miterlimit":F
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v18

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    move-object/from16 v21, v12

    move-wide/from16 v22, v13

    move-object/from16 v24, v15

    move-object/from16 v25, v16

    move/from16 v26, v17

    sget-object v27, Lcom/sun/javafx/geom/transform/BaseTransform;->IDENTITY_TRANSFORM:Lcom/sun/javafx/geom/transform/BaseTransform;

    invoke-virtual/range {v18 .. v27}, Lcom/sun/javafx/tk/Toolkit;->accumulateStrokeBounds(Lcom/sun/javafx/geom/Shape;[FLjavafx/scene/shape/StrokeType;DLjavafx/scene/shape/StrokeLineCap;Ljavafx/scene/shape/StrokeLineJoin;FLcom/sun/javafx/geom/transform/BaseTransform;)V

    .line 3016
    goto/16 :goto_0

    .line 3019
    .end local v10    # "bs":Ljavafx/scene/layout/BorderStroke;
    .end local v11    # "bss":Ljavafx/scene/layout/BorderStrokeStyle;
    .end local v12    # "type":Ljavafx/scene/shape/StrokeType;
    .end local v13    # "sw":D
    .end local v15    # "cap":Ljavafx/scene/shape/StrokeLineCap;
    .end local v16    # "join":Ljavafx/scene/shape/StrokeLineJoin;
    .end local v17    # "miterlimit":F
    :cond_7
    move-object/from16 v18, v6

    const/16 v19, 0x2

    aget v18, v18, v19

    move-object/from16 v19, v6

    const/16 v20, 0x0

    aget v19, v19, v20

    cmpg-float v18, v18, v19

    if-ltz v18, :cond_8

    move-object/from16 v18, v6

    const/16 v19, 0x3

    aget v18, v18, v19

    move-object/from16 v19, v6

    const/16 v20, 0x1

    aget v19, v19, v20

    cmpg-float v18, v18, v19

    if-gez v18, :cond_9

    .line 3020
    :cond_8
    move-object/from16 v18, v4

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/geom/BaseBounds;->makeEmpty()Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v18

    move-object/from16 v3, v18

    .line 3023
    .end local v3    # "this":Ljavafx/scene/layout/Region;
    :goto_2
    return-object v3

    .restart local v3    # "this":Ljavafx/scene/layout/Region;
    :cond_9
    move-object/from16 v18, v4

    move-object/from16 v19, v6

    const/16 v20, 0x0

    aget v19, v19, v20

    move-object/from16 v20, v6

    const/16 v21, 0x1

    aget v20, v20, v21

    const/16 v21, 0x0

    move-object/from16 v22, v6

    const/16 v23, 0x2

    aget v22, v22, v23

    move-object/from16 v23, v6

    const/16 v24, 0x3

    aget v23, v23, v24

    const/16 v24, 0x0

    invoke-virtual/range {v18 .. v24}, Lcom/sun/javafx/geom/BaseBounds;->deriveWithNewBounds(FFFFFF)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v18

    move-object/from16 v3, v18

    goto :goto_2

    .line 2978
    :array_0
    .array-data 4
        0x7f800000    # Float.POSITIVE_INFINITY
        0x7f800000    # Float.POSITIVE_INFINITY
        -0x800000    # Float.NEGATIVE_INFINITY
        -0x800000    # Float.NEGATIVE_INFINITY
    .end array-data
.end method

.method static computeXOffset(DDLjavafx/geometry/HPos;)D
    .locals 12

    .prologue
    .line 387
    move-wide v1, p0

    .local v1, "width":D
    move-wide v3, p2

    .local v3, "contentWidth":D
    move-object/from16 v5, p4

    .local v5, "hpos":Ljavafx/geometry/HPos;
    sget-object v6, Ljavafx/scene/layout/Region$11;->$SwitchMap$javafx$geometry$HPos:[I

    move-object v7, v5

    invoke-virtual {v7}, Ljavafx/geometry/HPos;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 395
    new-instance v6, Ljava/lang/AssertionError;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const-string v8, "Unhandled hPos"

    invoke-direct {v7, v8}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v6

    .line 389
    :pswitch_0
    const-wide/16 v6, 0x0

    move-wide v1, v6

    .line 393
    .end local v1    # "width":D
    :goto_0
    return-wide v1

    .line 391
    .restart local v1    # "width":D
    :pswitch_1
    move-wide v6, v1

    move-wide v8, v3

    sub-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    move-wide v1, v6

    goto :goto_0

    .line 393
    :pswitch_2
    move-wide v6, v1

    move-wide v8, v3

    sub-double/2addr v6, v8

    move-wide v1, v6

    goto :goto_0

    .line 387
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static computeYOffset(DDLjavafx/geometry/VPos;)D
    .locals 12

    .prologue
    .line 400
    move-wide v1, p0

    .local v1, "height":D
    move-wide v3, p2

    .local v3, "contentHeight":D
    move-object/from16 v5, p4

    .local v5, "vpos":Ljavafx/geometry/VPos;
    sget-object v6, Ljavafx/scene/layout/Region$11;->$SwitchMap$javafx$geometry$VPos:[I

    move-object v7, v5

    invoke-virtual {v7}, Ljavafx/geometry/VPos;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 409
    new-instance v6, Ljava/lang/AssertionError;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const-string v8, "Unhandled vPos"

    invoke-direct {v7, v8}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v6

    .line 403
    :pswitch_0
    const-wide/16 v6, 0x0

    move-wide v1, v6

    .line 407
    .end local v1    # "height":D
    :goto_0
    return-wide v1

    .line 405
    .restart local v1    # "height":D
    :pswitch_1
    move-wide v6, v1

    move-wide v8, v3

    sub-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    move-wide v1, v6

    goto :goto_0

    .line 407
    :pswitch_2
    move-wide v6, v1

    move-wide v8, v3

    sub-double/2addr v6, v8

    move-wide v1, v6

    goto :goto_0

    .line 400
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private contains(DDDDDDLjavafx/geometry/Insets;Ljavafx/scene/layout/CornerRadii;)Z
    .locals 63

    .prologue
    .line 2697
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/layout/Region;
    move-wide/from16 v2, p1

    .local v2, "px":D
    move-wide/from16 v4, p3

    .local v4, "py":D
    move-wide/from16 v6, p5

    .local v6, "x1":D
    move-wide/from16 v8, p7

    .local v8, "y1":D
    move-wide/from16 v10, p9

    .local v10, "x2":D
    move-wide/from16 v12, p11

    .local v12, "y2":D
    move-object/from16 v14, p13

    .local v14, "insets":Ljavafx/geometry/Insets;
    move-object/from16 v15, p14

    .local v15, "rad":Ljavafx/scene/layout/CornerRadii;
    move-wide/from16 v54, v6

    move-object/from16 v56, v14

    invoke-virtual/range {v56 .. v56}, Ljavafx/geometry/Insets;->getLeft()D

    move-result-wide v56

    add-double v54, v54, v56

    move-wide/from16 v16, v54

    .line 2698
    .local v16, "rrx0":D
    move-wide/from16 v54, v8

    move-object/from16 v56, v14

    invoke-virtual/range {v56 .. v56}, Ljavafx/geometry/Insets;->getTop()D

    move-result-wide v56

    add-double v54, v54, v56

    move-wide/from16 v18, v54

    .line 2699
    .local v18, "rry0":D
    move-wide/from16 v54, v10

    move-object/from16 v56, v14

    invoke-virtual/range {v56 .. v56}, Ljavafx/geometry/Insets;->getRight()D

    move-result-wide v56

    sub-double v54, v54, v56

    move-wide/from16 v20, v54

    .line 2700
    .local v20, "rrx1":D
    move-wide/from16 v54, v12

    move-object/from16 v56, v14

    invoke-virtual/range {v56 .. v56}, Ljavafx/geometry/Insets;->getBottom()D

    move-result-wide v56

    sub-double v54, v54, v56

    move-wide/from16 v22, v54

    .line 2705
    .local v22, "rry1":D
    move-wide/from16 v54, v2

    move-wide/from16 v56, v16

    cmpl-double v54, v54, v56

    if-ltz v54, :cond_5

    move-wide/from16 v54, v4

    move-wide/from16 v56, v18

    cmpl-double v54, v54, v56

    if-ltz v54, :cond_5

    move-wide/from16 v54, v2

    move-wide/from16 v56, v20

    cmpg-double v54, v54, v56

    if-gtz v54, :cond_5

    move-wide/from16 v54, v4

    move-wide/from16 v56, v22

    cmpg-double v54, v54, v56

    if-gtz v54, :cond_5

    .line 2709
    move-object/from16 v54, v15

    invoke-virtual/range {v54 .. v54}, Ljavafx/scene/layout/CornerRadii;->getTopLeftHorizontalRadius()D

    move-result-wide v54

    move-wide/from16 v24, v54

    .line 2710
    .local v24, "tlhr":D
    move-object/from16 v54, v15

    invoke-virtual/range {v54 .. v54}, Ljavafx/scene/layout/CornerRadii;->isUniform()Z

    move-result v54

    if-eqz v54, :cond_0

    move-wide/from16 v54, v24

    const-wide/16 v56, 0x0

    cmpl-double v54, v54, v56

    if-nez v54, :cond_0

    .line 2713
    const/16 v54, 0x1

    move/from16 v1, v54

    .line 2762
    .end local v1    # "this":Ljavafx/scene/layout/Region;
    .end local v24    # "tlhr":D
    :goto_0
    return v1

    .line 2715
    .restart local v1    # "this":Ljavafx/scene/layout/Region;
    .restart local v24    # "tlhr":D
    :cond_0
    move-object/from16 v54, v15

    invoke-virtual/range {v54 .. v54}, Ljavafx/scene/layout/CornerRadii;->getTopLeftVerticalRadius()D

    move-result-wide v54

    move-wide/from16 v26, v54

    .line 2716
    .local v26, "tlvr":D
    move-object/from16 v54, v15

    invoke-virtual/range {v54 .. v54}, Ljavafx/scene/layout/CornerRadii;->getTopRightHorizontalRadius()D

    move-result-wide v54

    move-wide/from16 v28, v54

    .line 2717
    .local v28, "trhr":D
    move-object/from16 v54, v15

    invoke-virtual/range {v54 .. v54}, Ljavafx/scene/layout/CornerRadii;->getTopRightVerticalRadius()D

    move-result-wide v54

    move-wide/from16 v30, v54

    .line 2718
    .local v30, "trvr":D
    move-object/from16 v54, v15

    invoke-virtual/range {v54 .. v54}, Ljavafx/scene/layout/CornerRadii;->getBottomLeftHorizontalRadius()D

    move-result-wide v54

    move-wide/from16 v32, v54

    .line 2719
    .local v32, "blhr":D
    move-object/from16 v54, v15

    invoke-virtual/range {v54 .. v54}, Ljavafx/scene/layout/CornerRadii;->getBottomLeftVerticalRadius()D

    move-result-wide v54

    move-wide/from16 v34, v54

    .line 2720
    .local v34, "blvr":D
    move-object/from16 v54, v15

    invoke-virtual/range {v54 .. v54}, Ljavafx/scene/layout/CornerRadii;->getBottomRightHorizontalRadius()D

    move-result-wide v54

    move-wide/from16 v36, v54

    .line 2721
    .local v36, "brhr":D
    move-object/from16 v54, v15

    invoke-virtual/range {v54 .. v54}, Ljavafx/scene/layout/CornerRadii;->getBottomRightVerticalRadius()D

    move-result-wide v54

    move-wide/from16 v38, v54

    .line 2726
    .local v38, "brvr":D
    move-wide/from16 v54, v2

    move-wide/from16 v56, v16

    move-wide/from16 v58, v24

    add-double v56, v56, v58

    cmpg-double v54, v54, v56

    if-gtz v54, :cond_1

    move-wide/from16 v54, v4

    move-wide/from16 v56, v18

    move-wide/from16 v58, v26

    add-double v56, v56, v58

    cmpg-double v54, v54, v56

    if-gtz v54, :cond_1

    .line 2728
    move-wide/from16 v54, v16

    move-wide/from16 v56, v24

    add-double v54, v54, v56

    move-wide/from16 v40, v54

    .line 2729
    .local v40, "centerX":D
    move-wide/from16 v54, v18

    move-wide/from16 v56, v26

    add-double v54, v54, v56

    move-wide/from16 v42, v54

    .line 2730
    .local v42, "centerY":D
    move-wide/from16 v54, v24

    move-wide/from16 v44, v54

    .line 2731
    .local v44, "a":D
    move-wide/from16 v54, v26

    move-wide/from16 v46, v54

    .line 2755
    .local v46, "b":D
    :goto_1
    move-wide/from16 v54, v2

    move-wide/from16 v56, v40

    sub-double v54, v54, v56

    move-wide/from16 v48, v54

    .line 2756
    .local v48, "x":D
    move-wide/from16 v54, v4

    move-wide/from16 v56, v42

    sub-double v54, v54, v56

    move-wide/from16 v50, v54

    .line 2757
    .local v50, "y":D
    move-wide/from16 v54, v48

    move-wide/from16 v56, v48

    mul-double v54, v54, v56

    move-wide/from16 v56, v44

    move-wide/from16 v58, v44

    mul-double v56, v56, v58

    div-double v54, v54, v56

    move-wide/from16 v56, v50

    move-wide/from16 v58, v50

    mul-double v56, v56, v58

    move-wide/from16 v58, v46

    move-wide/from16 v60, v46

    mul-double v58, v58, v60

    div-double v56, v56, v58

    add-double v54, v54, v56

    move-wide/from16 v52, v54

    .line 2759
    .local v52, "result":D
    move-wide/from16 v54, v52

    const-wide v56, 0x3e7ad7f29abcaf48L    # 1.0E-7

    sub-double v54, v54, v56

    const-wide/high16 v56, 0x3ff0000000000000L    # 1.0

    cmpg-double v54, v54, v56

    if-gtz v54, :cond_5

    const/16 v54, 0x1

    move/from16 v1, v54

    goto/16 :goto_0

    .line 2732
    .end local v40    # "centerX":D
    .end local v42    # "centerY":D
    .end local v44    # "a":D
    .end local v46    # "b":D
    .end local v48    # "x":D
    .end local v50    # "y":D
    .end local v52    # "result":D
    :cond_1
    move-wide/from16 v54, v2

    move-wide/from16 v56, v20

    move-wide/from16 v58, v28

    sub-double v56, v56, v58

    cmpl-double v54, v54, v56

    if-ltz v54, :cond_2

    move-wide/from16 v54, v4

    move-wide/from16 v56, v18

    move-wide/from16 v58, v30

    add-double v56, v56, v58

    cmpg-double v54, v54, v56

    if-gtz v54, :cond_2

    .line 2734
    move-wide/from16 v54, v20

    move-wide/from16 v56, v28

    sub-double v54, v54, v56

    move-wide/from16 v40, v54

    .line 2735
    .restart local v40    # "centerX":D
    move-wide/from16 v54, v18

    move-wide/from16 v56, v30

    add-double v54, v54, v56

    move-wide/from16 v42, v54

    .line 2736
    .restart local v42    # "centerY":D
    move-wide/from16 v54, v28

    move-wide/from16 v44, v54

    .line 2737
    .restart local v44    # "a":D
    move-wide/from16 v54, v30

    move-wide/from16 v46, v54

    .restart local v46    # "b":D
    goto :goto_1

    .line 2738
    .end local v40    # "centerX":D
    .end local v42    # "centerY":D
    .end local v44    # "a":D
    .end local v46    # "b":D
    :cond_2
    move-wide/from16 v54, v2

    move-wide/from16 v56, v20

    move-wide/from16 v58, v36

    sub-double v56, v56, v58

    cmpl-double v54, v54, v56

    if-ltz v54, :cond_3

    move-wide/from16 v54, v4

    move-wide/from16 v56, v22

    move-wide/from16 v58, v38

    sub-double v56, v56, v58

    cmpl-double v54, v54, v56

    if-ltz v54, :cond_3

    .line 2740
    move-wide/from16 v54, v20

    move-wide/from16 v56, v36

    sub-double v54, v54, v56

    move-wide/from16 v40, v54

    .line 2741
    .restart local v40    # "centerX":D
    move-wide/from16 v54, v22

    move-wide/from16 v56, v38

    sub-double v54, v54, v56

    move-wide/from16 v42, v54

    .line 2742
    .restart local v42    # "centerY":D
    move-wide/from16 v54, v36

    move-wide/from16 v44, v54

    .line 2743
    .restart local v44    # "a":D
    move-wide/from16 v54, v38

    move-wide/from16 v46, v54

    .restart local v46    # "b":D
    goto/16 :goto_1

    .line 2744
    .end local v40    # "centerX":D
    .end local v42    # "centerY":D
    .end local v44    # "a":D
    .end local v46    # "b":D
    :cond_3
    move-wide/from16 v54, v2

    move-wide/from16 v56, v16

    move-wide/from16 v58, v32

    add-double v56, v56, v58

    cmpg-double v54, v54, v56

    if-gtz v54, :cond_4

    move-wide/from16 v54, v4

    move-wide/from16 v56, v22

    move-wide/from16 v58, v34

    sub-double v56, v56, v58

    cmpl-double v54, v54, v56

    if-ltz v54, :cond_4

    .line 2746
    move-wide/from16 v54, v16

    move-wide/from16 v56, v32

    add-double v54, v54, v56

    move-wide/from16 v40, v54

    .line 2747
    .restart local v40    # "centerX":D
    move-wide/from16 v54, v22

    move-wide/from16 v56, v34

    sub-double v54, v54, v56

    move-wide/from16 v42, v54

    .line 2748
    .restart local v42    # "centerY":D
    move-wide/from16 v54, v32

    move-wide/from16 v44, v54

    .line 2749
    .restart local v44    # "a":D
    move-wide/from16 v54, v34

    move-wide/from16 v46, v54

    .restart local v46    # "b":D
    goto/16 :goto_1

    .line 2752
    .end local v40    # "centerX":D
    .end local v42    # "centerY":D
    .end local v44    # "a":D
    .end local v46    # "b":D
    :cond_4
    const/16 v54, 0x1

    move/from16 v1, v54

    goto/16 :goto_0

    .line 2762
    .end local v24    # "tlhr":D
    .end local v26    # "tlvr":D
    .end local v28    # "trhr":D
    .end local v30    # "trvr":D
    .end local v32    # "blhr":D
    .end local v34    # "blvr":D
    .end local v36    # "brhr":D
    .end local v38    # "brvr":D
    :cond_5
    const/16 v54, 0x0

    move/from16 v1, v54

    goto/16 :goto_0
.end method

.method private contains(DDDDDDLjavafx/scene/layout/BorderWidths;ZLjavafx/geometry/Insets;Ljavafx/scene/layout/CornerRadii;)Z
    .locals 37

    .prologue
    .line 2657
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/layout/Region;
    move-wide/from16 v1, p1

    .local v1, "px":D
    move-wide/from16 v3, p3

    .local v3, "py":D
    move-wide/from16 v5, p5

    .local v5, "x1":D
    move-wide/from16 v7, p7

    .local v7, "y1":D
    move-wide/from16 v9, p9

    .local v9, "x2":D
    move-wide/from16 v11, p11

    .local v11, "y2":D
    move-object/from16 v13, p13

    .local v13, "widths":Ljavafx/scene/layout/BorderWidths;
    move/from16 v14, p14

    .local v14, "filled":Z
    move-object/from16 v15, p15

    .local v15, "insets":Ljavafx/geometry/Insets;
    move-object/from16 v16, p16

    .local v16, "rad":Ljavafx/scene/layout/CornerRadii;
    move/from16 v19, v14

    if-eqz v19, :cond_0

    .line 2658
    move-object/from16 v19, v0

    move-wide/from16 v20, v1

    move-wide/from16 v22, v3

    move-wide/from16 v24, v5

    move-wide/from16 v26, v7

    move-wide/from16 v28, v9

    move-wide/from16 v30, v11

    move-object/from16 v32, v15

    move-object/from16 v33, v16

    invoke-direct/range {v19 .. v33}, Ljavafx/scene/layout/Region;->contains(DDDDDDLjavafx/geometry/Insets;Ljavafx/scene/layout/CornerRadii;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 2659
    const/16 v19, 0x1

    move/from16 v0, v19

    .line 2673
    .end local v0    # "this":Ljavafx/scene/layout/Region;
    :goto_0
    return v0

    .line 2662
    .restart local v0    # "this":Ljavafx/scene/layout/Region;
    :cond_0
    move-object/from16 v19, v0

    move-wide/from16 v20, v1

    move-wide/from16 v22, v3

    move-wide/from16 v24, v5

    move-wide/from16 v26, v7

    move-wide/from16 v28, v9

    move-wide/from16 v30, v11

    move-object/from16 v32, v15

    move-object/from16 v33, v16

    invoke-direct/range {v19 .. v33}, Ljavafx/scene/layout/Region;->contains(DDDDDDLjavafx/geometry/Insets;Ljavafx/scene/layout/CornerRadii;)Z

    move-result v19

    move/from16 v17, v19

    .line 2663
    .local v17, "insideOuterEdge":Z
    move/from16 v19, v17

    if-eqz v19, :cond_6

    .line 2664
    move-object/from16 v19, v0

    move-wide/from16 v20, v1

    move-wide/from16 v22, v3

    move-wide/from16 v24, v5

    move-object/from16 v26, v13

    .line 2665
    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/layout/BorderWidths;->isLeftAsPercentage()Z

    move-result v26

    if-eqz v26, :cond_1

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/layout/Region;->getWidth()D

    move-result-wide v26

    move-object/from16 v28, v13

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/layout/BorderWidths;->getLeft()D

    move-result-wide v28

    mul-double v26, v26, v28

    :goto_1
    add-double v24, v24, v26

    move-wide/from16 v26, v7

    move-object/from16 v28, v13

    .line 2666
    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/layout/BorderWidths;->isTopAsPercentage()Z

    move-result v28

    if-eqz v28, :cond_2

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/layout/Region;->getHeight()D

    move-result-wide v28

    move-object/from16 v30, v13

    invoke-virtual/range {v30 .. v30}, Ljavafx/scene/layout/BorderWidths;->getTop()D

    move-result-wide v30

    mul-double v28, v28, v30

    :goto_2
    add-double v26, v26, v28

    move-wide/from16 v28, v9

    move-object/from16 v30, v13

    .line 2667
    invoke-virtual/range {v30 .. v30}, Ljavafx/scene/layout/BorderWidths;->isRightAsPercentage()Z

    move-result v30

    if-eqz v30, :cond_3

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljavafx/scene/layout/Region;->getWidth()D

    move-result-wide v30

    move-object/from16 v32, v13

    invoke-virtual/range {v32 .. v32}, Ljavafx/scene/layout/BorderWidths;->getRight()D

    move-result-wide v32

    mul-double v30, v30, v32

    :goto_3
    sub-double v28, v28, v30

    move-wide/from16 v30, v11

    move-object/from16 v32, v13

    .line 2668
    invoke-virtual/range {v32 .. v32}, Ljavafx/scene/layout/BorderWidths;->isBottomAsPercentage()Z

    move-result v32

    if-eqz v32, :cond_4

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljavafx/scene/layout/Region;->getHeight()D

    move-result-wide v32

    move-object/from16 v34, v13

    invoke-virtual/range {v34 .. v34}, Ljavafx/scene/layout/BorderWidths;->getBottom()D

    move-result-wide v34

    mul-double v32, v32, v34

    :goto_4
    sub-double v30, v30, v32

    move-object/from16 v32, v15

    move-object/from16 v33, v16

    .line 2664
    invoke-direct/range {v19 .. v33}, Ljavafx/scene/layout/Region;->contains(DDDDDDLjavafx/geometry/Insets;Ljavafx/scene/layout/CornerRadii;)Z

    move-result v19

    if-nez v19, :cond_5

    const/16 v19, 0x1

    :goto_5
    move/from16 v18, v19

    .line 2670
    .local v18, "outsideInnerEdge":Z
    move/from16 v19, v18

    if-eqz v19, :cond_6

    const/16 v19, 0x1

    move/from16 v0, v19

    goto/16 :goto_0

    .line 2665
    .end local v18    # "outsideInnerEdge":Z
    :cond_1
    move-object/from16 v26, v13

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/layout/BorderWidths;->getLeft()D

    move-result-wide v26

    goto :goto_1

    .line 2666
    :cond_2
    move-object/from16 v28, v13

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/layout/BorderWidths;->getTop()D

    move-result-wide v28

    goto :goto_2

    .line 2667
    :cond_3
    move-object/from16 v30, v13

    invoke-virtual/range {v30 .. v30}, Ljavafx/scene/layout/BorderWidths;->getRight()D

    move-result-wide v30

    goto :goto_3

    .line 2668
    :cond_4
    move-object/from16 v32, v13

    invoke-virtual/range {v32 .. v32}, Ljavafx/scene/layout/BorderWidths;->getBottom()D

    move-result-wide v32

    goto :goto_4

    .line 2664
    :cond_5
    const/16 v19, 0x0

    goto :goto_5

    .line 2673
    .end local v17    # "insideOuterEdge":Z
    :cond_6
    const/16 v19, 0x0

    move/from16 v0, v19

    goto/16 :goto_0
.end method

.method static createDoubleArray(ID)[D
    .locals 11

    .prologue
    .line 414
    move v1, p0

    .local v1, "length":I
    move-wide v2, p1

    .local v2, "value":D
    move v6, v1

    new-array v6, v6, [D

    move-object v4, v6

    .line 415
    .local v4, "array":[D
    const/4 v6, 0x0

    move v5, v6

    .local v5, "i":I
    :goto_0
    move v6, v5

    move v7, v1

    if-ge v6, v7, :cond_0

    .line 416
    move-object v6, v4

    move v7, v5

    move-wide v8, v2

    aput-wide v8, v6, v7

    .line 415
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 418
    :cond_0
    move-object v6, v4

    move-object v1, v6

    .end local v1    # "length":I
    return-object v1
.end method

.method static getAreaBaselineOffset(Ljava/util/List;Ljavafx/util/Callback;Ljava/util/function/Function;DLjava/util/function/Function;DZ)D
    .locals 38
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljavafx/scene/Node;",
            ">;",
            "Ljavafx/util/Callback",
            "<",
            "Ljavafx/scene/Node;",
            "Ljavafx/geometry/Insets;",
            ">;",
            "Ljava/util/function/Function",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Double;",
            ">;D",
            "Ljava/util/function/Function",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;DZ)D"
        }
    .end annotation

    .prologue
    .line 314
    move-object/from16 v2, p0

    .local v2, "children":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    move-object/from16 v3, p1

    .local v3, "margins":Ljavafx/util/Callback;, "Ljavafx/util/Callback<Ljavafx/scene/Node;Ljavafx/geometry/Insets;>;"
    move-object/from16 v4, p2

    .local v4, "positionToWidth":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/Integer;Ljava/lang/Double;>;"
    move-wide/from16 v5, p3

    .local v5, "areaHeight":D
    move-object/from16 v7, p5

    .local v7, "fillHeight":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    move-wide/from16 v8, p6

    .local v8, "minComplement":D
    move/from16 v10, p8

    .local v10, "snapToPixel":Z
    const-wide/16 v24, 0x0

    move-wide/from16 v11, v24

    .line 315
    .local v11, "b":D
    const/16 v24, 0x0

    move/from16 v13, v24

    .local v13, "i":I
    :goto_0
    move/from16 v24, v13

    move-object/from16 v25, v2

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_5

    .line 316
    move-object/from16 v24, v2

    move/from16 v25, v13

    invoke-interface/range {v24 .. v25}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljavafx/scene/Node;

    move-object/from16 v14, v24

    .line 317
    .local v14, "n":Ljavafx/scene/Node;
    move-object/from16 v24, v3

    move-object/from16 v25, v14

    invoke-interface/range {v24 .. v25}, Ljavafx/util/Callback;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljavafx/geometry/Insets;

    move-object/from16 v15, v24

    .line 318
    .local v15, "margin":Ljavafx/geometry/Insets;
    move-object/from16 v24, v15

    if-eqz v24, :cond_1

    move-object/from16 v24, v15

    invoke-virtual/range {v24 .. v24}, Ljavafx/geometry/Insets;->getTop()D

    move-result-wide v24

    move/from16 v26, v10

    invoke-static/range {v24 .. v26}, Ljavafx/scene/layout/Region;->snapSpace(DZ)D

    move-result-wide v24

    :goto_1
    move-wide/from16 v16, v24

    .line 319
    .local v16, "top":D
    move-object/from16 v24, v15

    if-eqz v24, :cond_2

    move-object/from16 v24, v15

    invoke-virtual/range {v24 .. v24}, Ljavafx/geometry/Insets;->getBottom()D

    move-result-wide v24

    move/from16 v26, v10

    invoke-static/range {v24 .. v26}, Ljavafx/scene/layout/Region;->snapSpace(DZ)D

    move-result-wide v24

    :goto_2
    move-wide/from16 v18, v24

    .line 320
    .local v18, "bottom":D
    move-object/from16 v24, v14

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/Node;->getBaselineOffset()D

    move-result-wide v24

    move-wide/from16 v20, v24

    .line 321
    .local v20, "bo":D
    move-wide/from16 v24, v20

    const-wide/high16 v26, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v24, v24, v26

    if-nez v24, :cond_4

    .line 322
    const-wide/high16 v24, -0x4010000000000000L    # -1.0

    move-wide/from16 v22, v24

    .line 323
    .local v22, "alt":D
    move-object/from16 v24, v14

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/Node;->getContentBias()Ljavafx/geometry/Orientation;

    move-result-object v24

    sget-object v25, Ljavafx/geometry/Orientation;->HORIZONTAL:Ljavafx/geometry/Orientation;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_0

    .line 324
    move-object/from16 v24, v4

    move/from16 v25, v13

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-interface/range {v24 .. v25}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Double;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v24

    move-wide/from16 v22, v24

    .line 326
    :cond_0
    move-object/from16 v24, v7

    move/from16 v25, v13

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-interface/range {v24 .. v25}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Boolean;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v24

    if-eqz v24, :cond_3

    .line 328
    move-wide/from16 v24, v11

    move-wide/from16 v26, v16

    move-object/from16 v28, v14

    move-wide/from16 v29, v22

    invoke-virtual/range {v28 .. v30}, Ljavafx/scene/Node;->minHeight(D)D

    move-result-wide v28

    move-wide/from16 v30, v5

    move-wide/from16 v32, v8

    sub-double v30, v30, v32

    move-wide/from16 v32, v16

    sub-double v30, v30, v32

    move-wide/from16 v32, v18

    sub-double v30, v30, v32

    move-object/from16 v32, v14

    move-wide/from16 v33, v22

    .line 329
    invoke-virtual/range {v32 .. v34}, Ljavafx/scene/Node;->maxHeight(D)D

    move-result-wide v32

    .line 328
    invoke-static/range {v28 .. v33}, Ljavafx/scene/layout/Region;->boundedSize(DDD)D

    move-result-wide v28

    add-double v26, v26, v28

    invoke-static/range {v24 .. v27}, Ljava/lang/Math;->max(DD)D

    move-result-wide v24

    move-wide/from16 v11, v24

    .line 335
    .line 315
    .end local v22    # "alt":D
    :goto_3
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    .line 318
    .end local v16    # "top":D
    .end local v18    # "bottom":D
    .end local v20    # "bo":D
    :cond_1
    const-wide/16 v24, 0x0

    goto/16 :goto_1

    .line 319
    .restart local v16    # "top":D
    :cond_2
    const-wide/16 v24, 0x0

    goto/16 :goto_2

    .line 332
    .restart local v18    # "bottom":D
    .restart local v20    # "bo":D
    .restart local v22    # "alt":D
    :cond_3
    move-wide/from16 v24, v11

    move-wide/from16 v26, v16

    move-object/from16 v28, v14

    move-wide/from16 v29, v22

    invoke-virtual/range {v28 .. v30}, Ljavafx/scene/Node;->minHeight(D)D

    move-result-wide v28

    move-object/from16 v30, v14

    move-wide/from16 v31, v22

    invoke-virtual/range {v30 .. v32}, Ljavafx/scene/Node;->prefHeight(D)D

    move-result-wide v30

    move-object/from16 v32, v14

    move-wide/from16 v33, v22

    .line 333
    invoke-virtual/range {v32 .. v34}, Ljavafx/scene/Node;->maxHeight(D)D

    move-result-wide v32

    move-wide/from16 v34, v5

    move-wide/from16 v36, v8

    sub-double v34, v34, v36

    move-wide/from16 v36, v16

    sub-double v34, v34, v36

    move-wide/from16 v36, v18

    sub-double v34, v34, v36

    invoke-static/range {v32 .. v35}, Ljava/lang/Math;->min(DD)D

    move-result-wide v32

    .line 332
    invoke-static/range {v28 .. v33}, Ljavafx/scene/layout/Region;->boundedSize(DDD)D

    move-result-wide v28

    add-double v26, v26, v28

    invoke-static/range {v24 .. v27}, Ljava/lang/Math;->max(DD)D

    move-result-wide v24

    move-wide/from16 v11, v24

    goto :goto_3

    .line 336
    .end local v22    # "alt":D
    :cond_4
    move-wide/from16 v24, v11

    move-wide/from16 v26, v16

    move-wide/from16 v28, v20

    add-double v26, v26, v28

    invoke-static/range {v24 .. v27}, Ljava/lang/Math;->max(DD)D

    move-result-wide v24

    move-wide/from16 v11, v24

    goto :goto_3

    .line 339
    .end local v14    # "n":Ljavafx/scene/Node;
    .end local v15    # "margin":Ljavafx/geometry/Insets;
    .end local v16    # "top":D
    .end local v18    # "bottom":D
    .end local v20    # "bo":D
    :cond_5
    move-wide/from16 v24, v11

    move-wide/from16 v2, v24

    .end local v2    # "children":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    return-wide v2
.end method

.method static getAreaBaselineOffset(Ljava/util/List;Ljavafx/util/Callback;Ljava/util/function/Function;DZDZ)D
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljavafx/scene/Node;",
            ">;",
            "Ljavafx/util/Callback",
            "<",
            "Ljavafx/scene/Node;",
            "Ljavafx/geometry/Insets;",
            ">;",
            "Ljava/util/function/Function",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Double;",
            ">;DZDZ)D"
        }
    .end annotation

    .prologue
    .line 292
    move-object/from16 v0, p0

    .local v0, "children":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    move-object/from16 v1, p1

    .local v1, "margins":Ljavafx/util/Callback;, "Ljavafx/util/Callback<Ljavafx/scene/Node;Ljavafx/geometry/Insets;>;"
    move-object/from16 v2, p2

    .local v2, "positionToWidth":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/Integer;Ljava/lang/Double;>;"
    move-wide/from16 v3, p3

    .local v3, "areaHeight":D
    move/from16 v5, p5

    .local v5, "fillHeight":Z
    move-wide/from16 v6, p6

    .local v6, "minComplement":D
    move/from16 v8, p8

    .local v8, "snapToPixel":Z
    move-object v9, v0

    move-object v10, v1

    move-object v11, v2

    move-wide v12, v3

    move v14, v5

    invoke-static {v14}, Ljavafx/scene/layout/Region$$Lambda$1;->lambdaFactory$(Z)Ljava/util/function/Function;

    move-result-object v14

    move-wide v15, v6

    move/from16 v17, v8

    invoke-static/range {v9 .. v17}, Ljavafx/scene/layout/Region;->getAreaBaselineOffset(Ljava/util/List;Ljavafx/util/Callback;Ljava/util/function/Function;DLjava/util/function/Function;DZ)D

    move-result-wide v9

    move-wide v0, v9

    .end local v0    # "children":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    return-wide v0
.end method

.method static getAreaBaselineOffset(Ljava/util/List;Ljavafx/util/Callback;Ljava/util/function/Function;DZZ)D
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljavafx/scene/Node;",
            ">;",
            "Ljavafx/util/Callback",
            "<",
            "Ljavafx/scene/Node;",
            "Ljavafx/geometry/Insets;",
            ">;",
            "Ljava/util/function/Function",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Double;",
            ">;DZZ)D"
        }
    .end annotation

    .prologue
    .line 279
    move-object/from16 v1, p0

    .local v1, "children":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    move-object/from16 v2, p1

    .local v2, "margins":Ljavafx/util/Callback;, "Ljavafx/util/Callback<Ljavafx/scene/Node;Ljavafx/geometry/Insets;>;"
    move-object/from16 v3, p2

    .local v3, "positionToWidth":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/Integer;Ljava/lang/Double;>;"
    move-wide/from16 v4, p3

    .local v4, "areaHeight":D
    move/from16 v6, p5

    .local v6, "fillHeight":Z
    move/from16 v7, p6

    .local v7, "snapToPixel":Z
    move-object v8, v1

    move-object v9, v2

    move-object v10, v3

    move-wide v11, v4

    move v13, v6

    move-object v14, v1

    .line 280
    invoke-static {v14}, Ljavafx/scene/layout/Region;->getMinBaselineComplement(Ljava/util/List;)D

    move-result-wide v14

    move/from16 v16, v7

    .line 279
    invoke-static/range {v8 .. v16}, Ljavafx/scene/layout/Region;->getAreaBaselineOffset(Ljava/util/List;Ljavafx/util/Callback;Ljava/util/function/Function;DZDZ)D

    move-result-wide v8

    move-wide v1, v8

    .end local v1    # "children":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    return-wide v1
.end method

.method private static getBaselineComplement(Ljava/util/List;ZZ)D
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljavafx/scene/Node;",
            ">;ZZ)D"
        }
    .end annotation

    .prologue
    .line 370
    move-object/from16 v1, p0

    .local v1, "children":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    move/from16 v2, p1

    .local v2, "min":Z
    move/from16 v3, p2

    .local v3, "max":Z
    const-wide/16 v10, 0x0

    move-wide v4, v10

    .line 371
    .local v4, "bc":D
    move-object v10, v1

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-object v6, v10

    :goto_0
    move-object v10, v6

    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    move-object v10, v6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljavafx/scene/Node;

    move-object v7, v10

    .line 372
    .local v7, "n":Ljavafx/scene/Node;
    move-object v10, v7

    invoke-virtual {v10}, Ljavafx/scene/Node;->getBaselineOffset()D

    move-result-wide v10

    move-wide v8, v10

    .line 373
    .local v8, "bo":D
    move-wide v10, v8

    const-wide/high16 v12, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v10, v10, v12

    if-nez v10, :cond_0

    .line 374
    goto :goto_0

    .line 376
    :cond_0
    move-object v10, v7

    invoke-virtual {v10}, Ljavafx/scene/Node;->isResizable()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 377
    move-wide v10, v4

    move v12, v2

    if-eqz v12, :cond_1

    move-object v12, v7

    const-wide/high16 v13, -0x4010000000000000L    # -1.0

    invoke-virtual {v12, v13, v14}, Ljavafx/scene/Node;->minHeight(D)D

    move-result-wide v12

    :goto_1
    move-wide v14, v8

    sub-double/2addr v12, v14

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v10

    move-wide v4, v10

    .line 381
    :goto_2
    goto :goto_0

    .line 377
    :cond_1
    move v12, v3

    if-eqz v12, :cond_2

    move-object v12, v7

    const-wide/high16 v13, -0x4010000000000000L    # -1.0

    invoke-virtual {v12, v13, v14}, Ljavafx/scene/Node;->maxHeight(D)D

    move-result-wide v12

    goto :goto_1

    :cond_2
    move-object v12, v7

    const-wide/high16 v13, -0x4010000000000000L    # -1.0

    invoke-virtual {v12, v13, v14}, Ljavafx/scene/Node;->prefHeight(D)D

    move-result-wide v12

    goto :goto_1

    .line 379
    :cond_3
    move-wide v10, v4

    move-object v12, v7

    invoke-virtual {v12}, Ljavafx/scene/Node;->getLayoutBounds()Ljavafx/geometry/Bounds;

    move-result-object v12

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getHeight()D

    move-result-wide v12

    move-wide v14, v8

    sub-double/2addr v12, v14

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v10

    move-wide v4, v10

    goto :goto_2

    .line 382
    .end local v7    # "n":Ljavafx/scene/Node;
    .end local v8    # "bo":D
    :cond_4
    move-wide v10, v4

    move-wide v1, v10

    .end local v1    # "children":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    return-wide v1
.end method

.method public static getClassCssMetaData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljavafx/css/CssMetaData",
            "<+",
            "Ljavafx/css/Styleable;",
            "*>;>;"
        }
    .end annotation

    .prologue
    .line 3400
    # getter for: Ljavafx/scene/layout/Region$StyleableProperties;->STYLEABLES:Ljava/util/List;
    invoke-static {}, Ljavafx/scene/layout/Region$StyleableProperties;->access$5200()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getMaxAreaHeight(Ljava/util/List;Ljavafx/util/Callback;[DLjavafx/geometry/VPos;Z)D
    .locals 37
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljavafx/scene/Node;",
            ">;",
            "Ljavafx/util/Callback",
            "<",
            "Ljavafx/scene/Node;",
            "Ljavafx/geometry/Insets;",
            ">;[D",
            "Ljavafx/geometry/VPos;",
            "Z)D"
        }
    .end annotation

    .prologue
    .line 1948
    move-object/from16 v2, p0

    .local v2, "this":Ljavafx/scene/layout/Region;
    move-object/from16 v3, p1

    .local v3, "children":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    move-object/from16 v4, p2

    .local v4, "childMargins":Ljavafx/util/Callback;, "Ljavafx/util/Callback<Ljavafx/scene/Node;Ljavafx/geometry/Insets;>;"
    move-object/from16 v5, p3

    .local v5, "childWidths":[D
    move-object/from16 v6, p4

    .local v6, "valignment":Ljavafx/geometry/VPos;
    move/from16 v7, p5

    .local v7, "minimum":Z
    move-object/from16 v28, v5

    if-nez v28, :cond_0

    const-wide/high16 v28, -0x4010000000000000L    # -1.0

    :goto_0
    move-wide/from16 v8, v28

    .line 1949
    .local v8, "singleChildWidth":D
    move-object/from16 v28, v6

    sget-object v29, Ljavafx/geometry/VPos;->BASELINE:Ljavafx/geometry/VPos;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_9

    .line 1950
    const-wide/16 v28, 0x0

    move-wide/from16 v10, v28

    .line 1951
    .local v10, "maxAbove":D
    const-wide/16 v28, 0x0

    move-wide/from16 v12, v28

    .line 1952
    .local v12, "maxBelow":D
    const/16 v28, 0x0

    move/from16 v14, v28

    .local v14, "i":I
    move-object/from16 v28, v3

    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    move-result v28

    move/from16 v15, v28

    .local v15, "maxPos":I
    :goto_1
    move/from16 v28, v14

    move/from16 v29, v15

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_8

    .line 1953
    move-object/from16 v28, v3

    move/from16 v29, v14

    invoke-interface/range {v28 .. v29}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljavafx/scene/Node;

    move-object/from16 v16, v28

    .line 1954
    .local v16, "child":Ljavafx/scene/Node;
    move-wide/from16 v28, v8

    invoke-static/range {v28 .. v29}, Ljava/lang/Double;->isNaN(D)Z

    move-result v28

    if-eqz v28, :cond_2

    move-object/from16 v28, v5

    move/from16 v29, v14

    aget-wide v28, v28, v29

    :goto_2
    move-wide/from16 v17, v28

    .line 1955
    .local v17, "childWidth":D
    move-object/from16 v28, v4

    move-object/from16 v29, v16

    invoke-interface/range {v28 .. v29}, Ljavafx/util/Callback;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljavafx/geometry/Insets;

    move-object/from16 v19, v28

    .line 1956
    .local v19, "margin":Ljavafx/geometry/Insets;
    move-object/from16 v28, v19

    if-eqz v28, :cond_3

    move-object/from16 v28, v2

    move-object/from16 v29, v19

    invoke-virtual/range {v29 .. v29}, Ljavafx/geometry/Insets;->getTop()D

    move-result-wide v29

    invoke-virtual/range {v28 .. v30}, Ljavafx/scene/layout/Region;->snapSpace(D)D

    move-result-wide v28

    :goto_3
    move-wide/from16 v20, v28

    .line 1957
    .local v20, "top":D
    move-object/from16 v28, v19

    if-eqz v28, :cond_4

    move-object/from16 v28, v2

    move-object/from16 v29, v19

    invoke-virtual/range {v29 .. v29}, Ljavafx/geometry/Insets;->getBottom()D

    move-result-wide v29

    invoke-virtual/range {v28 .. v30}, Ljavafx/scene/layout/Region;->snapSpace(D)D

    move-result-wide v28

    :goto_4
    move-wide/from16 v22, v28

    .line 1958
    .local v22, "bottom":D
    move-object/from16 v28, v16

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/Node;->getBaselineOffset()D

    move-result-wide v28

    move-wide/from16 v24, v28

    .line 1960
    .local v24, "baseline":D
    move/from16 v28, v7

    if-eqz v28, :cond_5

    move-object/from16 v28, v2

    move-object/from16 v29, v16

    move-wide/from16 v30, v17

    invoke-virtual/range {v29 .. v31}, Ljavafx/scene/Node;->minHeight(D)D

    move-result-wide v29

    invoke-virtual/range {v28 .. v30}, Ljavafx/scene/layout/Region;->snapSize(D)D

    move-result-wide v28

    :goto_5
    move-wide/from16 v26, v28

    .line 1961
    .local v26, "childHeight":D
    move-wide/from16 v28, v24

    const-wide/high16 v30, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v28, v28, v30

    if-nez v28, :cond_6

    .line 1962
    move-wide/from16 v28, v10

    move-wide/from16 v30, v26

    move-wide/from16 v32, v20

    add-double v30, v30, v32

    invoke-static/range {v28 .. v31}, Ljava/lang/Math;->max(DD)D

    move-result-wide v28

    move-wide/from16 v10, v28

    .line 1952
    :goto_6
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1

    .line 1948
    .end local v8    # "singleChildWidth":D
    .end local v10    # "maxAbove":D
    .end local v12    # "maxBelow":D
    .end local v14    # "i":I
    .end local v15    # "maxPos":I
    .end local v16    # "child":Ljavafx/scene/Node;
    .end local v17    # "childWidth":D
    .end local v19    # "margin":Ljavafx/geometry/Insets;
    .end local v20    # "top":D
    .end local v22    # "bottom":D
    .end local v24    # "baseline":D
    .end local v26    # "childHeight":D
    :cond_0
    move-object/from16 v28, v5

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v28, v0

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_1

    move-object/from16 v28, v5

    const/16 v29, 0x0

    aget-wide v28, v28, v29

    goto/16 :goto_0

    :cond_1
    const-wide/high16 v28, 0x7ff8000000000000L    # NaN

    goto/16 :goto_0

    .line 1954
    .restart local v8    # "singleChildWidth":D
    .restart local v10    # "maxAbove":D
    .restart local v12    # "maxBelow":D
    .restart local v14    # "i":I
    .restart local v15    # "maxPos":I
    .restart local v16    # "child":Ljavafx/scene/Node;
    :cond_2
    move-wide/from16 v28, v8

    goto/16 :goto_2

    .line 1956
    .restart local v17    # "childWidth":D
    .restart local v19    # "margin":Ljavafx/geometry/Insets;
    :cond_3
    const-wide/16 v28, 0x0

    goto :goto_3

    .line 1957
    .restart local v20    # "top":D
    :cond_4
    const-wide/16 v28, 0x0

    goto :goto_4

    .line 1960
    .restart local v22    # "bottom":D
    .restart local v24    # "baseline":D
    :cond_5
    move-object/from16 v28, v2

    move-object/from16 v29, v16

    move-wide/from16 v30, v17

    invoke-virtual/range {v29 .. v31}, Ljavafx/scene/Node;->prefHeight(D)D

    move-result-wide v29

    invoke-virtual/range {v28 .. v30}, Ljavafx/scene/layout/Region;->snapSize(D)D

    move-result-wide v28

    goto :goto_5

    .line 1964
    .restart local v26    # "childHeight":D
    :cond_6
    move-wide/from16 v28, v10

    move-wide/from16 v30, v24

    move-wide/from16 v32, v20

    add-double v30, v30, v32

    invoke-static/range {v28 .. v31}, Ljava/lang/Math;->max(DD)D

    move-result-wide v28

    move-wide/from16 v10, v28

    .line 1965
    move-wide/from16 v28, v12

    move-object/from16 v30, v2

    move/from16 v31, v7

    if-eqz v31, :cond_7

    move-object/from16 v31, v2

    move-object/from16 v32, v16

    move-wide/from16 v33, v17

    .line 1966
    invoke-virtual/range {v32 .. v34}, Ljavafx/scene/Node;->minHeight(D)D

    move-result-wide v32

    invoke-virtual/range {v31 .. v33}, Ljavafx/scene/layout/Region;->snapSize(D)D

    move-result-wide v31

    :goto_7
    invoke-virtual/range {v30 .. v32}, Ljavafx/scene/layout/Region;->snapSpace(D)D

    move-result-wide v30

    move-wide/from16 v32, v24

    sub-double v30, v30, v32

    move-wide/from16 v32, v22

    add-double v30, v30, v32

    .line 1965
    invoke-static/range {v28 .. v31}, Ljava/lang/Math;->max(DD)D

    move-result-wide v28

    move-wide/from16 v12, v28

    goto :goto_6

    .line 1966
    :cond_7
    move-object/from16 v31, v2

    move-object/from16 v32, v16

    move-wide/from16 v33, v17

    invoke-virtual/range {v32 .. v34}, Ljavafx/scene/Node;->prefHeight(D)D

    move-result-wide v32

    invoke-virtual/range {v31 .. v33}, Ljavafx/scene/layout/Region;->snapSize(D)D

    move-result-wide v31

    goto :goto_7

    .line 1970
    .end local v16    # "child":Ljavafx/scene/Node;
    .end local v17    # "childWidth":D
    .end local v19    # "margin":Ljavafx/geometry/Insets;
    .end local v20    # "top":D
    .end local v22    # "bottom":D
    .end local v24    # "baseline":D
    .end local v26    # "childHeight":D
    :cond_8
    move-wide/from16 v28, v10

    move-wide/from16 v30, v12

    add-double v28, v28, v30

    move-wide/from16 v2, v28

    .line 1981
    .end local v2    # "this":Ljavafx/scene/layout/Region;
    .end local v10    # "maxAbove":D
    .end local v12    # "maxBelow":D
    .end local v14    # "i":I
    .end local v15    # "maxPos":I
    :goto_8
    return-wide v2

    .line 1972
    .restart local v2    # "this":Ljavafx/scene/layout/Region;
    :cond_9
    const-wide/16 v28, 0x0

    move-wide/from16 v10, v28

    .line 1973
    .local v10, "max":D
    const/16 v28, 0x0

    move/from16 v12, v28

    .local v12, "i":I
    move-object/from16 v28, v3

    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    move-result v28

    move/from16 v13, v28

    .local v13, "maxPos":I
    :goto_9
    move/from16 v28, v12

    move/from16 v29, v13

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_c

    .line 1974
    move-object/from16 v28, v3

    move/from16 v29, v12

    invoke-interface/range {v28 .. v29}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljavafx/scene/Node;

    move-object/from16 v14, v28

    .line 1975
    .local v14, "child":Ljavafx/scene/Node;
    move-object/from16 v28, v4

    move-object/from16 v29, v14

    invoke-interface/range {v28 .. v29}, Ljavafx/util/Callback;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljavafx/geometry/Insets;

    move-object/from16 v15, v28

    .line 1976
    .local v15, "margin":Ljavafx/geometry/Insets;
    move-wide/from16 v28, v8

    invoke-static/range {v28 .. v29}, Ljava/lang/Double;->isNaN(D)Z

    move-result v28

    if-eqz v28, :cond_a

    move-object/from16 v28, v5

    move/from16 v29, v12

    aget-wide v28, v28, v29

    :goto_a
    move-wide/from16 v16, v28

    .line 1977
    .local v16, "childWidth":D
    move-wide/from16 v28, v10

    move/from16 v30, v7

    if-eqz v30, :cond_b

    move-object/from16 v30, v2

    move-object/from16 v31, v14

    const-wide/high16 v32, -0x4010000000000000L    # -1.0

    move-object/from16 v34, v15

    move-wide/from16 v35, v16

    .line 1978
    invoke-virtual/range {v30 .. v36}, Ljavafx/scene/layout/Region;->computeChildMinAreaHeight(Ljavafx/scene/Node;DLjavafx/geometry/Insets;D)D

    move-result-wide v30

    .line 1977
    :goto_b
    invoke-static/range {v28 .. v31}, Ljava/lang/Math;->max(DD)D

    move-result-wide v28

    move-wide/from16 v10, v28

    .line 1973
    add-int/lit8 v12, v12, 0x1

    goto :goto_9

    .line 1976
    .end local v16    # "childWidth":D
    :cond_a
    move-wide/from16 v28, v8

    goto :goto_a

    .line 1978
    .restart local v16    # "childWidth":D
    :cond_b
    move-object/from16 v30, v2

    move-object/from16 v31, v14

    const-wide/high16 v32, -0x4010000000000000L    # -1.0

    move-object/from16 v34, v15

    move-wide/from16 v35, v16

    .line 1979
    invoke-virtual/range {v30 .. v36}, Ljavafx/scene/layout/Region;->computeChildPrefAreaHeight(Ljavafx/scene/Node;DLjavafx/geometry/Insets;D)D

    move-result-wide v30

    goto :goto_b

    .line 1981
    .end local v14    # "child":Ljavafx/scene/Node;
    .end local v15    # "margin":Ljavafx/geometry/Insets;
    .end local v16    # "childWidth":D
    :cond_c
    move-wide/from16 v28, v10

    move-wide/from16 v2, v28

    goto :goto_8
.end method

.method private getMaxAreaWidth(Ljava/util/List;Ljavafx/util/Callback;[DZZ)D
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljavafx/scene/Node;",
            ">;",
            "Ljavafx/util/Callback",
            "<",
            "Ljavafx/scene/Node;",
            "Ljavafx/geometry/Insets;",
            ">;[DZZ)D"
        }
    .end annotation

    .prologue
    .line 1988
    move-object/from16 v2, p0

    .local v2, "this":Ljavafx/scene/layout/Region;
    move-object/from16 v3, p1

    .local v3, "children":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    move-object/from16 v4, p2

    .local v4, "childMargins":Ljavafx/util/Callback;, "Ljavafx/util/Callback<Ljavafx/scene/Node;Ljavafx/geometry/Insets;>;"
    move-object/from16 v5, p3

    .local v5, "childHeights":[D
    move/from16 v6, p4

    .local v6, "fillHeight":Z
    move/from16 v7, p5

    .local v7, "minimum":Z
    move-object/from16 v18, v5

    if-nez v18, :cond_0

    const-wide/high16 v18, -0x4010000000000000L    # -1.0

    :goto_0
    move-wide/from16 v8, v18

    .line 1990
    .local v8, "singleChildHeight":D
    const-wide/16 v18, 0x0

    move-wide/from16 v10, v18

    .line 1991
    .local v10, "max":D
    const/16 v18, 0x0

    move/from16 v12, v18

    .local v12, "i":I
    move-object/from16 v18, v3

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v13, v18

    .local v13, "maxPos":I
    :goto_1
    move/from16 v18, v12

    move/from16 v19, v13

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_4

    .line 1992
    move-object/from16 v18, v3

    move/from16 v19, v12

    invoke-interface/range {v18 .. v19}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljavafx/scene/Node;

    move-object/from16 v14, v18

    .line 1993
    .local v14, "child":Ljavafx/scene/Node;
    move-object/from16 v18, v4

    move-object/from16 v19, v14

    invoke-interface/range {v18 .. v19}, Ljavafx/util/Callback;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljavafx/geometry/Insets;

    move-object/from16 v15, v18

    .line 1994
    .local v15, "margin":Ljavafx/geometry/Insets;
    move-wide/from16 v18, v8

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->isNaN(D)Z

    move-result v18

    if-eqz v18, :cond_2

    move-object/from16 v18, v5

    move/from16 v19, v12

    aget-wide v18, v18, v19

    :goto_2
    move-wide/from16 v16, v18

    .line 1995
    .local v16, "childHeight":D
    move-wide/from16 v18, v10

    move/from16 v20, v7

    if-eqz v20, :cond_3

    move-object/from16 v20, v2

    move-object/from16 v21, v3

    move/from16 v22, v12

    .line 1996
    invoke-interface/range {v21 .. v22}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljavafx/scene/Node;

    const-wide/high16 v22, -0x4010000000000000L    # -1.0

    move-object/from16 v24, v15

    move-wide/from16 v25, v16

    move/from16 v27, v6

    invoke-virtual/range {v20 .. v27}, Ljavafx/scene/layout/Region;->computeChildMinAreaWidth(Ljavafx/scene/Node;DLjavafx/geometry/Insets;DZ)D

    move-result-wide v20

    .line 1995
    :goto_3
    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->max(DD)D

    move-result-wide v18

    move-wide/from16 v10, v18

    .line 1991
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 1988
    .end local v8    # "singleChildHeight":D
    .end local v10    # "max":D
    .end local v12    # "i":I
    .end local v13    # "maxPos":I
    .end local v14    # "child":Ljavafx/scene/Node;
    .end local v15    # "margin":Ljavafx/geometry/Insets;
    .end local v16    # "childHeight":D
    :cond_0
    move-object/from16 v18, v5

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    move-object/from16 v18, v5

    const/16 v19, 0x0

    aget-wide v18, v18, v19

    goto :goto_0

    :cond_1
    const-wide/high16 v18, 0x7ff8000000000000L    # NaN

    goto/16 :goto_0

    .line 1994
    .restart local v8    # "singleChildHeight":D
    .restart local v10    # "max":D
    .restart local v12    # "i":I
    .restart local v13    # "maxPos":I
    .restart local v14    # "child":Ljavafx/scene/Node;
    .restart local v15    # "margin":Ljavafx/geometry/Insets;
    :cond_2
    move-wide/from16 v18, v8

    goto :goto_2

    .line 1996
    .restart local v16    # "childHeight":D
    :cond_3
    move-object/from16 v20, v2

    move-object/from16 v21, v14

    const-wide/high16 v22, -0x4010000000000000L    # -1.0

    move-object/from16 v24, v15

    move-wide/from16 v25, v16

    move/from16 v27, v6

    .line 1997
    invoke-virtual/range {v20 .. v27}, Ljavafx/scene/layout/Region;->computeChildPrefAreaWidth(Ljavafx/scene/Node;DLjavafx/geometry/Insets;DZ)D

    move-result-wide v20

    goto :goto_3

    .line 1999
    .end local v14    # "child":Ljavafx/scene/Node;
    .end local v15    # "margin":Ljavafx/geometry/Insets;
    .end local v16    # "childHeight":D
    :cond_4
    move-wide/from16 v18, v10

    move-wide/from16 v2, v18

    .end local v2    # "this":Ljavafx/scene/layout/Region;
    return-wide v2
.end method

.method static getMaxBaselineComplement(Ljava/util/List;)D
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljavafx/scene/Node;",
            ">;)D"
        }
    .end annotation

    .prologue
    .line 366
    move-object v0, p0

    .local v0, "children":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    move-object v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Ljavafx/scene/layout/Region;->getBaselineComplement(Ljava/util/List;ZZ)D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "children":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    return-wide v0
.end method

.method static getMinBaselineComplement(Ljava/util/List;)D
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljavafx/scene/Node;",
            ">;)D"
        }
    .end annotation

    .prologue
    .line 348
    move-object v0, p0

    .local v0, "children":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    move-object v1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Ljavafx/scene/layout/Region;->getBaselineComplement(Ljava/util/List;ZZ)D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "children":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    return-wide v0
.end method

.method private getNormalizedFillCorner(I)Ljavafx/scene/layout/CornerRadii;
    .locals 4

    .prologue
    .line 2786
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Region;
    move v1, p1

    .local v1, "i":I
    move-object v2, v0

    iget-boolean v2, v2, Ljavafx/scene/layout/Region;->cornersValid:Z

    if-nez v2, :cond_0

    .line 2787
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/layout/Region;->validateCorners()V

    .line 2789
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/layout/Region;->normalizedFillCorners:Ljava/util/List;

    if-nez v2, :cond_1

    move-object v2, v0

    .line 2790
    invoke-virtual {v2}, Ljavafx/scene/layout/Region;->getBackground()Ljavafx/scene/layout/Background;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/scene/layout/Background;->getFills()Ljava/util/List;

    move-result-object v2

    move v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavafx/scene/layout/BackgroundFill;

    invoke-virtual {v2}, Ljavafx/scene/layout/BackgroundFill;->getRadii()Ljavafx/scene/layout/CornerRadii;

    move-result-object v2

    .line 2791
    :goto_0
    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/layout/Region;
    return-object v0

    .line 2790
    .restart local v0    # "this":Ljavafx/scene/layout/Region;
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/layout/Region;->normalizedFillCorners:Ljava/util/List;

    move v3, v1

    .line 2791
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavafx/scene/layout/CornerRadii;

    goto :goto_0
.end method

.method private getNormalizedStrokeCorner(I)Ljavafx/scene/layout/CornerRadii;
    .locals 4

    .prologue
    .line 2804
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Region;
    move v1, p1

    .local v1, "i":I
    move-object v2, v0

    iget-boolean v2, v2, Ljavafx/scene/layout/Region;->cornersValid:Z

    if-nez v2, :cond_0

    .line 2805
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/layout/Region;->validateCorners()V

    .line 2807
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/layout/Region;->normalizedStrokeCorners:Ljava/util/List;

    if-nez v2, :cond_1

    move-object v2, v0

    .line 2808
    invoke-virtual {v2}, Ljavafx/scene/layout/Region;->getBorder()Ljavafx/scene/layout/Border;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/scene/layout/Border;->getStrokes()Ljava/util/List;

    move-result-object v2

    move v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavafx/scene/layout/BorderStroke;

    invoke-virtual {v2}, Ljavafx/scene/layout/BorderStroke;->getRadii()Ljavafx/scene/layout/CornerRadii;

    move-result-object v2

    .line 2809
    :goto_0
    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/layout/Region;
    return-object v0

    .line 2808
    .restart local v0    # "this":Ljavafx/scene/layout/Region;
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/layout/Region;->normalizedStrokeCorners:Ljava/util/List;

    move v3, v1

    .line 2809
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavafx/scene/layout/CornerRadii;

    goto :goto_0
.end method

.method static getPrefBaselineComplement(Ljava/util/List;)D
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljavafx/scene/Node;",
            ">;)D"
        }
    .end annotation

    .prologue
    .line 357
    move-object v0, p0

    .local v0, "children":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    move-object v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Ljavafx/scene/layout/Region;->getBaselineComplement(Ljava/util/List;ZZ)D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "children":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    return-wide v0
.end method

.method private heightChanged(D)V
    .locals 9

    .prologue
    .line 922
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/layout/Region;
    move-wide v2, p1

    .local v2, "value":D
    move-object v4, v1

    iget-wide v4, v4, Ljavafx/scene/layout/Region;->_height:D

    move-wide v6, v2

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_0

    .line 923
    move-object v4, v1

    move-wide v5, v2

    iput-wide v5, v4, Ljavafx/scene/layout/Region;->_height:D

    .line 924
    move-object v4, v1

    const/4 v5, 0x0

    iput-boolean v5, v4, Ljavafx/scene/layout/Region;->cornersValid:Z

    .line 930
    move-object v4, v1

    const/4 v5, 0x0

    iput-object v5, v4, Ljavafx/scene/layout/Region;->boundingBox:Ljavafx/geometry/Bounds;

    .line 934
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/layout/Region;->impl_geomChanged()V

    .line 935
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/layout/Region;->impl_layoutBoundsChanged()V

    .line 938
    move-object v4, v1

    sget-object v5, Lcom/sun/javafx/scene/DirtyBits;->NODE_GEOMETRY:Lcom/sun/javafx/scene/DirtyBits;

    invoke-virtual {v4, v5}, Ljavafx/scene/layout/Region;->impl_markDirty(Lcom/sun/javafx/scene/DirtyBits;)V

    .line 942
    move-object v4, v1

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljavafx/scene/layout/Region;->setNeedsLayout(Z)V

    .line 945
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/layout/Region;->requestParentLayout()V

    .line 947
    :cond_0
    return-void
.end method

.method private static synthetic lambda$getAreaBaselineOffset$499(ZLjava/lang/Integer;)Ljava/lang/Boolean;
    .locals 3

    .prologue
    .line 292
    move v0, p0

    .local v0, "fillHeight":Z
    move-object v1, p1

    .local v1, "t":Ljava/lang/Integer;
    move v2, v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "fillHeight":Z
    return-object v0
.end method

.method private synthetic lambda$new$500(Ljavafx/beans/Observable;)V
    .locals 10

    .prologue
    .line 438
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/layout/Region;
    move-object v2, p1

    .local v2, "observable":Ljavafx/beans/Observable;
    move-object v6, v2

    check-cast v6, Ljavafx/beans/property/ReadOnlyObjectPropertyBase;

    move-object v3, v6

    .line 439
    .local v3, "imageProperty":Ljavafx/beans/property/ReadOnlyObjectPropertyBase;
    move-object v6, v3

    invoke-virtual {v6}, Ljavafx/beans/property/ReadOnlyObjectPropertyBase;->getBean()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavafx/scene/image/Image;

    move-object v4, v6

    .line 440
    .local v4, "image":Ljavafx/scene/image/Image;
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getImageAccessor()Lcom/sun/javafx/tk/Toolkit$ImageAccessor;

    move-result-object v6

    move-object v5, v6

    .line 441
    .local v5, "acc":Lcom/sun/javafx/tk/Toolkit$ImageAccessor;
    move-object v6, v4

    invoke-virtual {v6}, Ljavafx/scene/image/Image;->getProgress()D

    move-result-wide v6

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    cmpl-double v6, v6, v8

    if-nez v6, :cond_0

    move-object v6, v5

    move-object v7, v4

    invoke-interface {v6, v7}, Lcom/sun/javafx/tk/Toolkit$ImageAccessor;->isAnimation(Ljavafx/scene/image/Image;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 443
    move-object v6, v1

    move-object v7, v4

    invoke-virtual {v6, v7}, Ljavafx/scene/layout/Region;->removeImageListener(Ljavafx/scene/image/Image;)V

    .line 446
    :cond_0
    move-object v6, v1

    sget-object v7, Lcom/sun/javafx/scene/DirtyBits;->NODE_CONTENTS:Lcom/sun/javafx/scene/DirtyBits;

    invoke-virtual {v6, v7}, Ljavafx/scene/layout/Region;->impl_markDirty(Lcom/sun/javafx/scene/DirtyBits;)V

    .line 447
    return-void
.end method

.method public static layoutInArea(Ljavafx/scene/Node;DDDDDLjavafx/geometry/Insets;ZZLjavafx/geometry/HPos;Ljavafx/geometry/VPos;Z)V
    .locals 53

    .prologue
    .line 2299
    move-object/from16 v2, p0

    .local v2, "child":Ljavafx/scene/Node;
    move-wide/from16 v3, p1

    .local v3, "areaX":D
    move-wide/from16 v5, p3

    .local v5, "areaY":D
    move-wide/from16 v7, p5

    .local v7, "areaWidth":D
    move-wide/from16 v9, p7

    .local v9, "areaHeight":D
    move-wide/from16 v11, p9

    .local v11, "areaBaselineOffset":D
    move-object/from16 v13, p11

    .local v13, "margin":Ljavafx/geometry/Insets;
    move/from16 v14, p12

    .local v14, "fillWidth":Z
    move/from16 v15, p13

    .local v15, "fillHeight":Z
    move-object/from16 v16, p14

    .local v16, "halignment":Ljavafx/geometry/HPos;
    move-object/from16 v17, p15

    .local v17, "valignment":Ljavafx/geometry/VPos;
    move/from16 v18, p16

    .local v18, "isSnapToPixel":Z
    move-object/from16 v30, v13

    if-eqz v30, :cond_2

    move-object/from16 v30, v13

    :goto_0
    move-object/from16 v19, v30

    .line 2301
    .local v19, "childMargin":Ljavafx/geometry/Insets;
    move-object/from16 v30, v19

    invoke-virtual/range {v30 .. v30}, Ljavafx/geometry/Insets;->getTop()D

    move-result-wide v30

    move/from16 v32, v18

    invoke-static/range {v30 .. v32}, Ljavafx/scene/layout/Region;->snapSpace(DZ)D

    move-result-wide v30

    move-wide/from16 v20, v30

    .line 2302
    .local v20, "top":D
    move-object/from16 v30, v19

    invoke-virtual/range {v30 .. v30}, Ljavafx/geometry/Insets;->getBottom()D

    move-result-wide v30

    move/from16 v32, v18

    invoke-static/range {v30 .. v32}, Ljavafx/scene/layout/Region;->snapSpace(DZ)D

    move-result-wide v30

    move-wide/from16 v22, v30

    .line 2303
    .local v22, "bottom":D
    move-object/from16 v30, v19

    invoke-virtual/range {v30 .. v30}, Ljavafx/geometry/Insets;->getLeft()D

    move-result-wide v30

    move/from16 v32, v18

    invoke-static/range {v30 .. v32}, Ljavafx/scene/layout/Region;->snapSpace(DZ)D

    move-result-wide v30

    move-wide/from16 v24, v30

    .line 2304
    .local v24, "left":D
    move-object/from16 v30, v19

    invoke-virtual/range {v30 .. v30}, Ljavafx/geometry/Insets;->getRight()D

    move-result-wide v30

    move/from16 v32, v18

    invoke-static/range {v30 .. v32}, Ljavafx/scene/layout/Region;->snapSpace(DZ)D

    move-result-wide v30

    move-wide/from16 v26, v30

    .line 2306
    .local v26, "right":D
    move-object/from16 v30, v17

    sget-object v31, Ljavafx/geometry/VPos;->BASELINE:Ljavafx/geometry/VPos;

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_0

    .line 2307
    move-object/from16 v30, v2

    invoke-virtual/range {v30 .. v30}, Ljavafx/scene/Node;->getBaselineOffset()D

    move-result-wide v30

    move-wide/from16 v28, v30

    .line 2308
    .local v28, "bo":D
    move-wide/from16 v30, v28

    const-wide/high16 v32, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v30, v30, v32

    if-nez v30, :cond_4

    .line 2309
    move-object/from16 v30, v2

    invoke-virtual/range {v30 .. v30}, Ljavafx/scene/Node;->isResizable()Z

    move-result v30

    if-eqz v30, :cond_3

    .line 2312
    move-wide/from16 v30, v22

    move-wide/from16 v32, v9

    move-wide/from16 v34, v11

    sub-double v32, v32, v34

    move/from16 v34, v18

    invoke-static/range {v32 .. v34}, Ljavafx/scene/layout/Region;->snapSpace(DZ)D

    move-result-wide v32

    add-double v30, v30, v32

    move-wide/from16 v22, v30

    .line 2322
    .end local v28    # "bo":D
    :cond_0
    :goto_1
    move-object/from16 v30, v2

    invoke-virtual/range {v30 .. v30}, Ljavafx/scene/Node;->isResizable()Z

    move-result v30

    if-eqz v30, :cond_1

    .line 2323
    move-object/from16 v30, v2

    move-wide/from16 v31, v7

    move-wide/from16 v33, v24

    sub-double v31, v31, v33

    move-wide/from16 v33, v26

    sub-double v31, v31, v33

    move-wide/from16 v33, v9

    move-wide/from16 v35, v20

    sub-double v33, v33, v35

    move-wide/from16 v35, v22

    sub-double v33, v33, v35

    move/from16 v35, v14

    move/from16 v36, v15

    sget-object v37, Ljavafx/scene/layout/Region;->TEMP_VEC2D:Lcom/sun/javafx/geom/Vec2d;

    invoke-static/range {v30 .. v37}, Ljavafx/scene/layout/Region;->boundedNodeSizeWithBias(Ljavafx/scene/Node;DDZZLcom/sun/javafx/geom/Vec2d;)Lcom/sun/javafx/geom/Vec2d;

    move-result-object v30

    move-object/from16 v28, v30

    .line 2325
    .local v28, "size":Lcom/sun/javafx/geom/Vec2d;
    move-object/from16 v30, v2

    move-object/from16 v31, v28

    move-object/from16 v0, v31

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec2d;->x:D

    move-wide/from16 v31, v0

    move/from16 v33, v18

    invoke-static/range {v31 .. v33}, Ljavafx/scene/layout/Region;->snapSize(DZ)D

    move-result-wide v31

    move-object/from16 v33, v28

    move-object/from16 v0, v33

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec2d;->y:D

    move-wide/from16 v33, v0

    move/from16 v35, v18

    invoke-static/range {v33 .. v35}, Ljavafx/scene/layout/Region;->snapSize(DZ)D

    move-result-wide v33

    invoke-virtual/range {v30 .. v34}, Ljavafx/scene/Node;->resize(DD)V

    .line 2327
    .end local v28    # "size":Lcom/sun/javafx/geom/Vec2d;
    :cond_1
    move-object/from16 v30, v2

    move-wide/from16 v31, v3

    move-wide/from16 v33, v5

    move-wide/from16 v35, v7

    move-wide/from16 v37, v9

    move-wide/from16 v39, v11

    move-wide/from16 v41, v20

    move-wide/from16 v43, v26

    move-wide/from16 v45, v22

    move-wide/from16 v47, v24

    move-object/from16 v49, v16

    move-object/from16 v50, v17

    move/from16 v51, v18

    invoke-static/range {v30 .. v51}, Ljavafx/scene/layout/Region;->position(Ljavafx/scene/Node;DDDDDDDDDLjavafx/geometry/HPos;Ljavafx/geometry/VPos;Z)V

    .line 2329
    return-void

    .line 2299
    .end local v19    # "childMargin":Ljavafx/geometry/Insets;
    .end local v20    # "top":D
    .end local v22    # "bottom":D
    .end local v24    # "left":D
    .end local v26    # "right":D
    :cond_2
    sget-object v30, Ljavafx/geometry/Insets;->EMPTY:Ljavafx/geometry/Insets;

    goto/16 :goto_0

    .line 2314
    .restart local v19    # "childMargin":Ljavafx/geometry/Insets;
    .restart local v20    # "top":D
    .restart local v22    # "bottom":D
    .restart local v24    # "left":D
    .restart local v26    # "right":D
    .local v28, "bo":D
    :cond_3
    move-wide/from16 v30, v11

    move-object/from16 v32, v2

    invoke-virtual/range {v32 .. v32}, Ljavafx/scene/Node;->getLayoutBounds()Ljavafx/geometry/Bounds;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljavafx/geometry/Bounds;->getHeight()D

    move-result-wide v32

    sub-double v30, v30, v32

    move/from16 v32, v18

    invoke-static/range {v30 .. v32}, Ljavafx/scene/layout/Region;->snapSpace(DZ)D

    move-result-wide v30

    move-wide/from16 v20, v30

    goto/16 :goto_1

    .line 2317
    :cond_4
    move-wide/from16 v30, v11

    move-wide/from16 v32, v28

    sub-double v30, v30, v32

    move/from16 v32, v18

    invoke-static/range {v30 .. v32}, Ljavafx/scene/layout/Region;->snapSpace(DZ)D

    move-result-wide v30

    move-wide/from16 v20, v30

    goto/16 :goto_1
.end method

.method private static normalize(Ljavafx/scene/layout/CornerRadii;Ljavafx/geometry/Insets;DD)Ljavafx/scene/layout/CornerRadii;
    .locals 54

    .prologue
    .line 2884
    move-object/from16 v2, p0

    .local v2, "radii":Ljavafx/scene/layout/CornerRadii;
    move-object/from16 v3, p1

    .local v3, "insets":Ljavafx/geometry/Insets;
    move-wide/from16 v4, p2

    .local v4, "width":D
    move-wide/from16 v6, p4

    .local v6, "height":D
    move-wide/from16 v26, v4

    move-object/from16 v28, v3

    invoke-virtual/range {v28 .. v28}, Ljavafx/geometry/Insets;->getLeft()D

    move-result-wide v28

    move-object/from16 v30, v3

    invoke-virtual/range {v30 .. v30}, Ljavafx/geometry/Insets;->getRight()D

    move-result-wide v30

    add-double v28, v28, v30

    sub-double v26, v26, v28

    move-wide/from16 v4, v26

    .line 2885
    move-wide/from16 v26, v6

    move-object/from16 v28, v3

    invoke-virtual/range {v28 .. v28}, Ljavafx/geometry/Insets;->getTop()D

    move-result-wide v28

    move-object/from16 v30, v3

    invoke-virtual/range {v30 .. v30}, Ljavafx/geometry/Insets;->getBottom()D

    move-result-wide v30

    add-double v28, v28, v30

    sub-double v26, v26, v28

    move-wide/from16 v6, v26

    .line 2886
    move-wide/from16 v26, v4

    const-wide/16 v28, 0x0

    cmpg-double v26, v26, v28

    if-lez v26, :cond_0

    move-wide/from16 v26, v6

    const-wide/16 v28, 0x0

    cmpg-double v26, v26, v28

    if-gtz v26, :cond_1

    :cond_0
    sget-object v26, Ljavafx/scene/layout/CornerRadii;->EMPTY:Ljavafx/scene/layout/CornerRadii;

    move-object/from16 v2, v26

    .line 2920
    .end local v2    # "radii":Ljavafx/scene/layout/CornerRadii;
    :goto_0
    return-object v2

    .line 2887
    .restart local v2    # "radii":Ljavafx/scene/layout/CornerRadii;
    :cond_1
    move-object/from16 v26, v2

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/layout/CornerRadii;->getTopLeftVerticalRadius()D

    move-result-wide v26

    move-wide/from16 v8, v26

    .line 2888
    .local v8, "tlvr":D
    move-object/from16 v26, v2

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/layout/CornerRadii;->getTopLeftHorizontalRadius()D

    move-result-wide v26

    move-wide/from16 v10, v26

    .line 2889
    .local v10, "tlhr":D
    move-object/from16 v26, v2

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/layout/CornerRadii;->getTopRightVerticalRadius()D

    move-result-wide v26

    move-wide/from16 v12, v26

    .line 2890
    .local v12, "trvr":D
    move-object/from16 v26, v2

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/layout/CornerRadii;->getTopRightHorizontalRadius()D

    move-result-wide v26

    move-wide/from16 v14, v26

    .line 2891
    .local v14, "trhr":D
    move-object/from16 v26, v2

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/layout/CornerRadii;->getBottomRightVerticalRadius()D

    move-result-wide v26

    move-wide/from16 v16, v26

    .line 2892
    .local v16, "brvr":D
    move-object/from16 v26, v2

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/layout/CornerRadii;->getBottomRightHorizontalRadius()D

    move-result-wide v26

    move-wide/from16 v18, v26

    .line 2893
    .local v18, "brhr":D
    move-object/from16 v26, v2

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/layout/CornerRadii;->getBottomLeftVerticalRadius()D

    move-result-wide v26

    move-wide/from16 v20, v26

    .line 2894
    .local v20, "blvr":D
    move-object/from16 v26, v2

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/layout/CornerRadii;->getBottomLeftHorizontalRadius()D

    move-result-wide v26

    move-wide/from16 v22, v26

    .line 2895
    .local v22, "blhr":D
    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-boolean v0, v0, Ljavafx/scene/layout/CornerRadii;->hasPercentBasedRadii:Z

    move/from16 v26, v0

    if-eqz v26, :cond_9

    .line 2896
    move-object/from16 v26, v2

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/layout/CornerRadii;->isTopLeftVerticalRadiusAsPercentage()Z

    move-result v26

    if-eqz v26, :cond_2

    move-wide/from16 v26, v8

    move-wide/from16 v28, v6

    mul-double v26, v26, v28

    move-wide/from16 v8, v26

    .line 2897
    :cond_2
    move-object/from16 v26, v2

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/layout/CornerRadii;->isTopLeftHorizontalRadiusAsPercentage()Z

    move-result v26

    if-eqz v26, :cond_3

    move-wide/from16 v26, v10

    move-wide/from16 v28, v4

    mul-double v26, v26, v28

    move-wide/from16 v10, v26

    .line 2898
    :cond_3
    move-object/from16 v26, v2

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/layout/CornerRadii;->isTopRightVerticalRadiusAsPercentage()Z

    move-result v26

    if-eqz v26, :cond_4

    move-wide/from16 v26, v12

    move-wide/from16 v28, v6

    mul-double v26, v26, v28

    move-wide/from16 v12, v26

    .line 2899
    :cond_4
    move-object/from16 v26, v2

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/layout/CornerRadii;->isTopRightHorizontalRadiusAsPercentage()Z

    move-result v26

    if-eqz v26, :cond_5

    move-wide/from16 v26, v14

    move-wide/from16 v28, v4

    mul-double v26, v26, v28

    move-wide/from16 v14, v26

    .line 2900
    :cond_5
    move-object/from16 v26, v2

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/layout/CornerRadii;->isBottomRightVerticalRadiusAsPercentage()Z

    move-result v26

    if-eqz v26, :cond_6

    move-wide/from16 v26, v16

    move-wide/from16 v28, v6

    mul-double v26, v26, v28

    move-wide/from16 v16, v26

    .line 2901
    :cond_6
    move-object/from16 v26, v2

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/layout/CornerRadii;->isBottomRightHorizontalRadiusAsPercentage()Z

    move-result v26

    if-eqz v26, :cond_7

    move-wide/from16 v26, v18

    move-wide/from16 v28, v4

    mul-double v26, v26, v28

    move-wide/from16 v18, v26

    .line 2902
    :cond_7
    move-object/from16 v26, v2

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/layout/CornerRadii;->isBottomLeftVerticalRadiusAsPercentage()Z

    move-result v26

    if-eqz v26, :cond_8

    move-wide/from16 v26, v20

    move-wide/from16 v28, v6

    mul-double v26, v26, v28

    move-wide/from16 v20, v26

    .line 2903
    :cond_8
    move-object/from16 v26, v2

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/layout/CornerRadii;->isBottomLeftHorizontalRadiusAsPercentage()Z

    move-result v26

    if-eqz v26, :cond_9

    move-wide/from16 v26, v22

    move-wide/from16 v28, v4

    mul-double v26, v26, v28

    move-wide/from16 v22, v26

    .line 2905
    :cond_9
    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v24, v26

    .line 2906
    .local v24, "scale":D
    move-wide/from16 v26, v10

    move-wide/from16 v28, v14

    add-double v26, v26, v28

    move-wide/from16 v28, v4

    cmpl-double v26, v26, v28

    if-lez v26, :cond_a

    move-wide/from16 v26, v24

    move-wide/from16 v28, v4

    move-wide/from16 v30, v10

    move-wide/from16 v32, v14

    add-double v30, v30, v32

    div-double v28, v28, v30

    invoke-static/range {v26 .. v29}, Ljava/lang/Math;->min(DD)D

    move-result-wide v26

    move-wide/from16 v24, v26

    .line 2907
    :cond_a
    move-wide/from16 v26, v22

    move-wide/from16 v28, v18

    add-double v26, v26, v28

    move-wide/from16 v28, v4

    cmpl-double v26, v26, v28

    if-lez v26, :cond_b

    move-wide/from16 v26, v24

    move-wide/from16 v28, v4

    move-wide/from16 v30, v22

    move-wide/from16 v32, v18

    add-double v30, v30, v32

    div-double v28, v28, v30

    invoke-static/range {v26 .. v29}, Ljava/lang/Math;->min(DD)D

    move-result-wide v26

    move-wide/from16 v24, v26

    .line 2908
    :cond_b
    move-wide/from16 v26, v8

    move-wide/from16 v28, v20

    add-double v26, v26, v28

    move-wide/from16 v28, v6

    cmpl-double v26, v26, v28

    if-lez v26, :cond_c

    move-wide/from16 v26, v24

    move-wide/from16 v28, v6

    move-wide/from16 v30, v8

    move-wide/from16 v32, v20

    add-double v30, v30, v32

    div-double v28, v28, v30

    invoke-static/range {v26 .. v29}, Ljava/lang/Math;->min(DD)D

    move-result-wide v26

    move-wide/from16 v24, v26

    .line 2909
    :cond_c
    move-wide/from16 v26, v12

    move-wide/from16 v28, v16

    add-double v26, v26, v28

    move-wide/from16 v28, v6

    cmpl-double v26, v26, v28

    if-lez v26, :cond_d

    move-wide/from16 v26, v24

    move-wide/from16 v28, v6

    move-wide/from16 v30, v12

    move-wide/from16 v32, v16

    add-double v30, v30, v32

    div-double v28, v28, v30

    invoke-static/range {v26 .. v29}, Ljava/lang/Math;->min(DD)D

    move-result-wide v26

    move-wide/from16 v24, v26

    .line 2910
    :cond_d
    move-wide/from16 v26, v24

    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    cmpg-double v26, v26, v28

    if-gez v26, :cond_e

    .line 2911
    move-wide/from16 v26, v8

    move-wide/from16 v28, v24

    mul-double v26, v26, v28

    move-wide/from16 v8, v26

    move-wide/from16 v26, v10

    move-wide/from16 v28, v24

    mul-double v26, v26, v28

    move-wide/from16 v10, v26

    .line 2912
    move-wide/from16 v26, v12

    move-wide/from16 v28, v24

    mul-double v26, v26, v28

    move-wide/from16 v12, v26

    move-wide/from16 v26, v14

    move-wide/from16 v28, v24

    mul-double v26, v26, v28

    move-wide/from16 v14, v26

    .line 2913
    move-wide/from16 v26, v16

    move-wide/from16 v28, v24

    mul-double v26, v26, v28

    move-wide/from16 v16, v26

    move-wide/from16 v26, v18

    move-wide/from16 v28, v24

    mul-double v26, v26, v28

    move-wide/from16 v18, v26

    .line 2914
    move-wide/from16 v26, v20

    move-wide/from16 v28, v24

    mul-double v26, v26, v28

    move-wide/from16 v20, v26

    move-wide/from16 v26, v22

    move-wide/from16 v28, v24

    mul-double v26, v26, v28

    move-wide/from16 v22, v26

    .line 2916
    :cond_e
    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-boolean v0, v0, Ljavafx/scene/layout/CornerRadii;->hasPercentBasedRadii:Z

    move/from16 v26, v0

    if-nez v26, :cond_f

    move-wide/from16 v26, v24

    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    cmpg-double v26, v26, v28

    if-gez v26, :cond_10

    .line 2917
    :cond_f
    new-instance v26, Ljavafx/scene/layout/CornerRadii;

    move-object/from16 v52, v26

    move-object/from16 v26, v52

    move-object/from16 v27, v52

    move-wide/from16 v28, v10

    move-wide/from16 v30, v8

    move-wide/from16 v32, v12

    move-wide/from16 v34, v14

    move-wide/from16 v36, v18

    move-wide/from16 v38, v16

    move-wide/from16 v40, v20

    move-wide/from16 v42, v22

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    invoke-direct/range {v27 .. v51}, Ljavafx/scene/layout/CornerRadii;-><init>(DDDDDDDDZZZZZZZZ)V

    move-object/from16 v2, v26

    goto/16 :goto_0

    .line 2920
    :cond_10
    move-object/from16 v26, v2

    move-object/from16 v2, v26

    goto/16 :goto_0
.end method

.method private static position(Ljavafx/scene/Node;DDDDDDDDDLjavafx/geometry/HPos;Ljavafx/geometry/VPos;Z)V
    .locals 39

    .prologue
    .line 2335
    move-object/from16 v2, p0

    .local v2, "child":Ljavafx/scene/Node;
    move-wide/from16 v3, p1

    .local v3, "areaX":D
    move-wide/from16 v5, p3

    .local v5, "areaY":D
    move-wide/from16 v7, p5

    .local v7, "areaWidth":D
    move-wide/from16 v9, p7

    .local v9, "areaHeight":D
    move-wide/from16 v11, p9

    .local v11, "areaBaselineOffset":D
    move-wide/from16 v13, p11

    .local v13, "topMargin":D
    move-wide/from16 v15, p13

    .local v15, "rightMargin":D
    move-wide/from16 v17, p15

    .local v17, "bottomMargin":D
    move-wide/from16 v19, p17

    .local v19, "leftMargin":D
    move-object/from16 v21, p19

    .local v21, "hpos":Ljavafx/geometry/HPos;
    move-object/from16 v22, p20

    .local v22, "vpos":Ljavafx/geometry/VPos;
    move/from16 v23, p21

    .local v23, "isSnapToPixel":Z
    move-wide/from16 v32, v19

    move-wide/from16 v34, v7

    move-wide/from16 v36, v19

    sub-double v34, v34, v36

    move-wide/from16 v36, v15

    sub-double v34, v34, v36

    move-object/from16 v36, v2

    .line 2336
    invoke-virtual/range {v36 .. v36}, Ljavafx/scene/Node;->getLayoutBounds()Ljavafx/geometry/Bounds;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljavafx/geometry/Bounds;->getWidth()D

    move-result-wide v36

    move-object/from16 v38, v21

    .line 2335
    invoke-static/range {v34 .. v38}, Ljavafx/scene/layout/Region;->computeXOffset(DDLjavafx/geometry/HPos;)D

    move-result-wide v34

    add-double v32, v32, v34

    move-wide/from16 v24, v32

    .line 2338
    .local v24, "xoffset":D
    move-object/from16 v32, v22

    sget-object v33, Ljavafx/geometry/VPos;->BASELINE:Ljavafx/geometry/VPos;

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    if-ne v0, v1, :cond_1

    .line 2339
    move-object/from16 v32, v2

    invoke-virtual/range {v32 .. v32}, Ljavafx/scene/Node;->getBaselineOffset()D

    move-result-wide v32

    move-wide/from16 v28, v32

    .line 2340
    .local v28, "bo":D
    move-wide/from16 v32, v28

    const-wide/high16 v34, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v32, v32, v34

    if-nez v32, :cond_0

    .line 2342
    move-wide/from16 v32, v11

    move-object/from16 v34, v2

    invoke-virtual/range {v34 .. v34}, Ljavafx/scene/Node;->getLayoutBounds()Ljavafx/geometry/Bounds;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljavafx/geometry/Bounds;->getHeight()D

    move-result-wide v34

    sub-double v32, v32, v34

    move-wide/from16 v26, v32

    .line 2346
    .line 2350
    .end local v28    # "bo":D
    .local v26, "yoffset":D
    :goto_0
    move-wide/from16 v32, v3

    move-wide/from16 v34, v24

    add-double v32, v32, v34

    move/from16 v34, v23

    invoke-static/range {v32 .. v34}, Ljavafx/scene/layout/Region;->snapPosition(DZ)D

    move-result-wide v32

    move-wide/from16 v28, v32

    .line 2351
    .local v28, "x":D
    move-wide/from16 v32, v5

    move-wide/from16 v34, v26

    add-double v32, v32, v34

    move/from16 v34, v23

    invoke-static/range {v32 .. v34}, Ljavafx/scene/layout/Region;->snapPosition(DZ)D

    move-result-wide v32

    move-wide/from16 v30, v32

    .line 2353
    .local v30, "y":D
    move-object/from16 v32, v2

    move-wide/from16 v33, v28

    move-wide/from16 v35, v30

    invoke-virtual/range {v32 .. v36}, Ljavafx/scene/Node;->relocate(DD)V

    .line 2354
    return-void

    .line 2344
    .end local v26    # "yoffset":D
    .end local v30    # "y":D
    .local v28, "bo":D
    :cond_0
    move-wide/from16 v32, v11

    move-wide/from16 v34, v28

    sub-double v32, v32, v34

    move-wide/from16 v26, v32

    .restart local v26    # "yoffset":D
    goto :goto_0

    .line 2347
    .end local v26    # "yoffset":D
    .end local v28    # "bo":D
    :cond_1
    move-wide/from16 v32, v13

    move-wide/from16 v34, v9

    move-wide/from16 v36, v13

    sub-double v34, v34, v36

    move-wide/from16 v36, v17

    sub-double v34, v34, v36

    move-object/from16 v36, v2

    .line 2348
    invoke-virtual/range {v36 .. v36}, Ljavafx/scene/Node;->getLayoutBounds()Ljavafx/geometry/Bounds;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljavafx/geometry/Bounds;->getHeight()D

    move-result-wide v36

    move-object/from16 v38, v22

    .line 2347
    invoke-static/range {v34 .. v38}, Ljavafx/scene/layout/Region;->computeYOffset(DDLjavafx/geometry/VPos;)D

    move-result-wide v34

    add-double v32, v32, v34

    move-wide/from16 v26, v32

    .restart local v26    # "yoffset":D
    goto :goto_0
.end method

.method public static positionInArea(Ljavafx/scene/Node;DDDDDLjavafx/geometry/Insets;Ljavafx/geometry/HPos;Ljavafx/geometry/VPos;Z)V
    .locals 39

    .prologue
    .line 2065
    move-object/from16 v1, p0

    .local v1, "child":Ljavafx/scene/Node;
    move-wide/from16 v2, p1

    .local v2, "areaX":D
    move-wide/from16 v4, p3

    .local v4, "areaY":D
    move-wide/from16 v6, p5

    .local v6, "areaWidth":D
    move-wide/from16 v8, p7

    .local v8, "areaHeight":D
    move-wide/from16 v10, p9

    .local v10, "areaBaselineOffset":D
    move-object/from16 v12, p11

    .local v12, "margin":Ljavafx/geometry/Insets;
    move-object/from16 v13, p12

    .local v13, "halignment":Ljavafx/geometry/HPos;
    move-object/from16 v14, p13

    .local v14, "valignment":Ljavafx/geometry/VPos;
    move/from16 v15, p14

    .local v15, "isSnapToPixel":Z
    move-object/from16 v17, v12

    if-eqz v17, :cond_0

    move-object/from16 v17, v12

    :goto_0
    move-object/from16 v16, v17

    .line 2067
    .local v16, "childMargin":Ljavafx/geometry/Insets;
    move-object/from16 v17, v1

    move-wide/from16 v18, v2

    move-wide/from16 v20, v4

    move-wide/from16 v22, v6

    move-wide/from16 v24, v8

    move-wide/from16 v26, v10

    move-object/from16 v28, v16

    .line 2068
    invoke-virtual/range {v28 .. v28}, Ljavafx/geometry/Insets;->getTop()D

    move-result-wide v28

    move/from16 v30, v15

    invoke-static/range {v28 .. v30}, Ljavafx/scene/layout/Region;->snapSpace(DZ)D

    move-result-wide v28

    move-object/from16 v30, v16

    .line 2069
    invoke-virtual/range {v30 .. v30}, Ljavafx/geometry/Insets;->getRight()D

    move-result-wide v30

    move/from16 v32, v15

    invoke-static/range {v30 .. v32}, Ljavafx/scene/layout/Region;->snapSpace(DZ)D

    move-result-wide v30

    move-object/from16 v32, v16

    .line 2070
    invoke-virtual/range {v32 .. v32}, Ljavafx/geometry/Insets;->getBottom()D

    move-result-wide v32

    move/from16 v34, v15

    invoke-static/range {v32 .. v34}, Ljavafx/scene/layout/Region;->snapSpace(DZ)D

    move-result-wide v32

    move-object/from16 v34, v16

    .line 2071
    invoke-virtual/range {v34 .. v34}, Ljavafx/geometry/Insets;->getLeft()D

    move-result-wide v34

    move/from16 v36, v15

    invoke-static/range {v34 .. v36}, Ljavafx/scene/layout/Region;->snapSpace(DZ)D

    move-result-wide v34

    move-object/from16 v36, v13

    move-object/from16 v37, v14

    move/from16 v38, v15

    .line 2067
    invoke-static/range {v17 .. v38}, Ljavafx/scene/layout/Region;->position(Ljavafx/scene/Node;DDDDDDDDDLjavafx/geometry/HPos;Ljavafx/geometry/VPos;Z)V

    .line 2073
    return-void

    .line 2065
    .end local v16    # "childMargin":Ljavafx/geometry/Insets;
    :cond_0
    sget-object v17, Ljavafx/geometry/Insets;->EMPTY:Ljavafx/geometry/Insets;

    goto :goto_0
.end method

.method private shapeContains(Lcom/sun/javafx/geom/Shape;DDDDDD)Z
    .locals 40

    .prologue
    .line 2482
    move-object/from16 v3, p0

    .local v3, "this":Ljavafx/scene/layout/Region;
    move-object/from16 v4, p1

    .local v4, "shape":Lcom/sun/javafx/geom/Shape;
    move-wide/from16 v5, p2

    .local v5, "x":D
    move-wide/from16 v7, p4

    .local v7, "y":D
    move-wide/from16 v9, p6

    .local v9, "topOffset":D
    move-wide/from16 v11, p8

    .local v11, "rightOffset":D
    move-wide/from16 v13, p10

    .local v13, "bottomOffset":D
    move-wide/from16 v15, p12

    .local v15, "leftOffset":D
    move-wide/from16 v30, v5

    move-wide/from16 v17, v30

    .line 2483
    .local v17, "resX":D
    move-wide/from16 v30, v7

    move-wide/from16 v19, v30

    .line 2485
    .local v19, "resY":D
    move-object/from16 v30, v4

    invoke-virtual/range {v30 .. v30}, Lcom/sun/javafx/geom/Shape;->getBounds()Lcom/sun/javafx/geom/RectBounds;

    move-result-object v30

    move-object/from16 v21, v30

    .line 2486
    .local v21, "bounds":Lcom/sun/javafx/geom/RectBounds;
    move-object/from16 v30, v3

    invoke-virtual/range {v30 .. v30}, Ljavafx/scene/layout/Region;->isScaleShape()Z

    move-result v30

    if-eqz v30, :cond_1

    .line 2489
    move-wide/from16 v30, v17

    move-wide/from16 v32, v15

    sub-double v30, v30, v32

    move-wide/from16 v17, v30

    .line 2490
    move-wide/from16 v30, v19

    move-wide/from16 v32, v9

    sub-double v30, v30, v32

    move-wide/from16 v19, v30

    .line 2493
    move-wide/from16 v30, v17

    move-object/from16 v32, v21

    invoke-virtual/range {v32 .. v32}, Lcom/sun/javafx/geom/RectBounds;->getWidth()F

    move-result v32

    move/from16 v0, v32

    float-to-double v0, v0

    move-wide/from16 v32, v0

    move-object/from16 v34, v3

    invoke-virtual/range {v34 .. v34}, Ljavafx/scene/layout/Region;->getWidth()D

    move-result-wide v34

    move-wide/from16 v36, v15

    sub-double v34, v34, v36

    move-wide/from16 v36, v11

    sub-double v34, v34, v36

    div-double v32, v32, v34

    mul-double v30, v30, v32

    move-wide/from16 v17, v30

    .line 2494
    move-wide/from16 v30, v19

    move-object/from16 v32, v21

    invoke-virtual/range {v32 .. v32}, Lcom/sun/javafx/geom/RectBounds;->getHeight()F

    move-result v32

    move/from16 v0, v32

    float-to-double v0, v0

    move-wide/from16 v32, v0

    move-object/from16 v34, v3

    invoke-virtual/range {v34 .. v34}, Ljavafx/scene/layout/Region;->getHeight()D

    move-result-wide v34

    move-wide/from16 v36, v9

    sub-double v34, v34, v36

    move-wide/from16 v36, v13

    sub-double v34, v34, v36

    div-double v32, v32, v34

    mul-double v30, v30, v32

    move-wide/from16 v19, v30

    .line 2498
    move-object/from16 v30, v3

    invoke-virtual/range {v30 .. v30}, Ljavafx/scene/layout/Region;->isCenterShape()Z

    move-result v30

    if-eqz v30, :cond_0

    .line 2499
    move-wide/from16 v30, v17

    move-object/from16 v32, v21

    invoke-virtual/range {v32 .. v32}, Lcom/sun/javafx/geom/RectBounds;->getMinX()F

    move-result v32

    move/from16 v0, v32

    float-to-double v0, v0

    move-wide/from16 v32, v0

    add-double v30, v30, v32

    move-wide/from16 v17, v30

    .line 2500
    move-wide/from16 v30, v19

    move-object/from16 v32, v21

    invoke-virtual/range {v32 .. v32}, Lcom/sun/javafx/geom/RectBounds;->getMinY()F

    move-result v32

    move/from16 v0, v32

    float-to-double v0, v0

    move-wide/from16 v32, v0

    add-double v30, v30, v32

    move-wide/from16 v19, v30

    .line 2553
    :cond_0
    :goto_0
    move-object/from16 v30, v4

    move-wide/from16 v31, v17

    move-wide/from16 v0, v31

    double-to-float v0, v0

    move/from16 v31, v0

    move-wide/from16 v32, v19

    move-wide/from16 v0, v32

    double-to-float v0, v0

    move/from16 v32, v0

    invoke-virtual/range {v30 .. v32}, Lcom/sun/javafx/geom/Shape;->contains(FF)Z

    move-result v30

    move/from16 v3, v30

    .end local v3    # "this":Ljavafx/scene/layout/Region;
    return v3

    .line 2502
    .restart local v3    # "this":Ljavafx/scene/layout/Region;
    :cond_1
    move-object/from16 v30, v3

    invoke-virtual/range {v30 .. v30}, Ljavafx/scene/layout/Region;->isCenterShape()Z

    move-result v30

    if-eqz v30, :cond_2

    .line 2507
    move-object/from16 v30, v21

    invoke-virtual/range {v30 .. v30}, Lcom/sun/javafx/geom/RectBounds;->getWidth()F

    move-result v30

    move/from16 v0, v30

    float-to-double v0, v0

    move-wide/from16 v30, v0

    move-wide/from16 v22, v30

    .line 2508
    .local v22, "boundsWidth":D
    move-object/from16 v30, v21

    invoke-virtual/range {v30 .. v30}, Lcom/sun/javafx/geom/RectBounds;->getHeight()F

    move-result v30

    move/from16 v0, v30

    float-to-double v0, v0

    move-wide/from16 v30, v0

    move-wide/from16 v24, v30

    .line 2510
    .local v24, "boundsHeight":D
    move-wide/from16 v30, v22

    move-wide/from16 v32, v22

    move-wide/from16 v34, v15

    sub-double v32, v32, v34

    move-wide/from16 v34, v11

    sub-double v32, v32, v34

    div-double v30, v30, v32

    move-wide/from16 v26, v30

    .line 2511
    .local v26, "scaleFactorX":D
    move-wide/from16 v30, v24

    move-wide/from16 v32, v24

    move-wide/from16 v34, v9

    sub-double v32, v32, v34

    move-wide/from16 v34, v13

    sub-double v32, v32, v34

    div-double v30, v30, v32

    move-wide/from16 v28, v30

    .line 2527
    .local v28, "scaleFactorY":D
    move-wide/from16 v30, v26

    move-wide/from16 v32, v17

    move-wide/from16 v34, v15

    move-object/from16 v36, v3

    invoke-virtual/range {v36 .. v36}, Ljavafx/scene/layout/Region;->getWidth()D

    move-result-wide v36

    move-wide/from16 v38, v22

    sub-double v36, v36, v38

    const-wide/high16 v38, 0x4000000000000000L    # 2.0

    div-double v36, v36, v38

    add-double v34, v34, v36

    sub-double v32, v32, v34

    mul-double v30, v30, v32

    move-object/from16 v32, v21

    invoke-virtual/range {v32 .. v32}, Lcom/sun/javafx/geom/RectBounds;->getMinX()F

    move-result v32

    move/from16 v0, v32

    float-to-double v0, v0

    move-wide/from16 v32, v0

    add-double v30, v30, v32

    move-wide/from16 v17, v30

    .line 2528
    move-wide/from16 v30, v28

    move-wide/from16 v32, v19

    move-wide/from16 v34, v9

    move-object/from16 v36, v3

    invoke-virtual/range {v36 .. v36}, Ljavafx/scene/layout/Region;->getHeight()D

    move-result-wide v36

    move-wide/from16 v38, v24

    sub-double v36, v36, v38

    const-wide/high16 v38, 0x4000000000000000L    # 2.0

    div-double v36, v36, v38

    add-double v34, v34, v36

    sub-double v32, v32, v34

    mul-double v30, v30, v32

    move-object/from16 v32, v21

    invoke-virtual/range {v32 .. v32}, Lcom/sun/javafx/geom/RectBounds;->getMinY()F

    move-result v32

    move/from16 v0, v32

    float-to-double v0, v0

    move-wide/from16 v32, v0

    add-double v30, v30, v32

    move-wide/from16 v19, v30

    .line 2530
    goto/16 :goto_0

    .end local v22    # "boundsWidth":D
    .end local v24    # "boundsHeight":D
    .end local v26    # "scaleFactorX":D
    .end local v28    # "scaleFactorY":D
    :cond_2
    move-wide/from16 v30, v9

    const-wide/16 v32, 0x0

    cmpl-double v30, v30, v32

    if-nez v30, :cond_3

    move-wide/from16 v30, v11

    const-wide/16 v32, 0x0

    cmpl-double v30, v30, v32

    if-nez v30, :cond_3

    move-wide/from16 v30, v13

    const-wide/16 v32, 0x0

    cmpl-double v30, v30, v32

    if-nez v30, :cond_3

    move-wide/from16 v30, v15

    const-wide/16 v32, 0x0

    cmpl-double v30, v30, v32

    if-eqz v30, :cond_0

    .line 2533
    :cond_3
    move-object/from16 v30, v21

    invoke-virtual/range {v30 .. v30}, Lcom/sun/javafx/geom/RectBounds;->getWidth()F

    move-result v30

    move/from16 v0, v30

    float-to-double v0, v0

    move-wide/from16 v30, v0

    move-object/from16 v32, v21

    invoke-virtual/range {v32 .. v32}, Lcom/sun/javafx/geom/RectBounds;->getWidth()F

    move-result v32

    move/from16 v0, v32

    float-to-double v0, v0

    move-wide/from16 v32, v0

    move-wide/from16 v34, v15

    sub-double v32, v32, v34

    move-wide/from16 v34, v11

    sub-double v32, v32, v34

    div-double v30, v30, v32

    move-wide/from16 v22, v30

    .line 2534
    .local v22, "scaleFactorX":D
    move-object/from16 v30, v21

    invoke-virtual/range {v30 .. v30}, Lcom/sun/javafx/geom/RectBounds;->getHeight()F

    move-result v30

    move/from16 v0, v30

    float-to-double v0, v0

    move-wide/from16 v30, v0

    move-object/from16 v32, v21

    invoke-virtual/range {v32 .. v32}, Lcom/sun/javafx/geom/RectBounds;->getHeight()F

    move-result v32

    move/from16 v0, v32

    float-to-double v0, v0

    move-wide/from16 v32, v0

    move-wide/from16 v34, v9

    sub-double v32, v32, v34

    move-wide/from16 v34, v13

    sub-double v32, v32, v34

    div-double v30, v30, v32

    move-wide/from16 v24, v30

    .line 2549
    .local v24, "scaleFactorY":D
    move-wide/from16 v30, v22

    move-wide/from16 v32, v17

    move-wide/from16 v34, v15

    sub-double v32, v32, v34

    move-object/from16 v34, v21

    invoke-virtual/range {v34 .. v34}, Lcom/sun/javafx/geom/RectBounds;->getMinX()F

    move-result v34

    move/from16 v0, v34

    float-to-double v0, v0

    move-wide/from16 v34, v0

    sub-double v32, v32, v34

    mul-double v30, v30, v32

    move-object/from16 v32, v21

    invoke-virtual/range {v32 .. v32}, Lcom/sun/javafx/geom/RectBounds;->getMinX()F

    move-result v32

    move/from16 v0, v32

    float-to-double v0, v0

    move-wide/from16 v32, v0

    add-double v30, v30, v32

    move-wide/from16 v17, v30

    .line 2550
    move-wide/from16 v30, v24

    move-wide/from16 v32, v19

    move-wide/from16 v34, v9

    sub-double v32, v32, v34

    move-object/from16 v34, v21

    invoke-virtual/range {v34 .. v34}, Lcom/sun/javafx/geom/RectBounds;->getMinY()F

    move-result v34

    move/from16 v0, v34

    float-to-double v0, v0

    move-wide/from16 v34, v0

    sub-double v32, v32, v34

    mul-double v30, v30, v32

    move-object/from16 v32, v21

    invoke-virtual/range {v32 .. v32}, Lcom/sun/javafx/geom/RectBounds;->getMinY()F

    move-result v32

    move/from16 v0, v32

    float-to-double v0, v0

    move-wide/from16 v32, v0

    add-double v30, v30, v32

    move-wide/from16 v19, v30

    goto/16 :goto_0
.end method

.method private static snapPortion(DZ)D
    .locals 8

    .prologue
    .line 264
    move-wide v1, p0

    .local v1, "value":D
    move v3, p2

    .local v3, "snapToPixel":Z
    move v4, v3

    if-eqz v4, :cond_2

    .line 265
    move-wide v4, v1

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-nez v4, :cond_0

    const-wide/16 v4, 0x0

    :goto_0
    move-wide v1, v4

    .line 267
    .end local v1    # "value":D
    :goto_1
    return-wide v1

    .line 265
    .restart local v1    # "value":D
    :cond_0
    move-wide v4, v1

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    move-wide v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    goto :goto_0

    :cond_1
    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    move-wide v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    goto :goto_0

    .line 267
    :cond_2
    move-wide v4, v1

    move-wide v1, v4

    goto :goto_1
.end method

.method private static snapPosition(DZ)D
    .locals 6

    .prologue
    .line 260
    move-wide v1, p0

    .local v1, "value":D
    move v3, p2

    .local v3, "snapToPixel":Z
    move v4, v3

    if-eqz v4, :cond_0

    move-wide v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-double v4, v4

    :goto_0
    move-wide v1, v4

    .end local v1    # "value":D
    return-wide v1

    .restart local v1    # "value":D
    :cond_0
    move-wide v4, v1

    goto :goto_0
.end method

.method private static snapSize(DZ)D
    .locals 6

    .prologue
    .line 248
    move-wide v0, p0

    .local v0, "value":D
    move v2, p2

    .local v2, "snapToPixel":Z
    move v3, v2

    if-eqz v3, :cond_0

    move-wide v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    :goto_0
    move-wide v0, v3

    .end local v0    # "value":D
    return-wide v0

    .restart local v0    # "value":D
    :cond_0
    move-wide v3, v0

    goto :goto_0
.end method

.method private static snapSpace(DZ)D
    .locals 6

    .prologue
    .line 236
    move-wide v1, p0

    .local v1, "value":D
    move v3, p2

    .local v3, "snapToPixel":Z
    move v4, v3

    if-eqz v4, :cond_0

    move-wide v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-double v4, v4

    :goto_0
    move-wide v1, v4

    .end local v1    # "value":D
    return-wide v1

    .restart local v1    # "value":D
    :cond_0
    move-wide v4, v1

    goto :goto_0
.end method

.method private updateSnappedInsets()V
    .locals 6

    .prologue
    .line 820
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/layout/Region;
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/layout/Region;->getInsets()Ljavafx/geometry/Insets;

    move-result-object v3

    move-object v2, v3

    .line 821
    .local v2, "insets":Ljavafx/geometry/Insets;
    move-object v3, v1

    iget-boolean v3, v3, Ljavafx/scene/layout/Region;->_snapToPixel:Z

    if-eqz v3, :cond_0

    .line 822
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/geometry/Insets;->getTop()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    iput-wide v4, v3, Ljavafx/scene/layout/Region;->snappedTopInset:D

    .line 823
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/geometry/Insets;->getRight()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    iput-wide v4, v3, Ljavafx/scene/layout/Region;->snappedRightInset:D

    .line 824
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/geometry/Insets;->getBottom()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    iput-wide v4, v3, Ljavafx/scene/layout/Region;->snappedBottomInset:D

    .line 825
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/geometry/Insets;->getLeft()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    iput-wide v4, v3, Ljavafx/scene/layout/Region;->snappedLeftInset:D

    .line 832
    :goto_0
    return-void

    .line 827
    :cond_0
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/geometry/Insets;->getTop()D

    move-result-wide v4

    iput-wide v4, v3, Ljavafx/scene/layout/Region;->snappedTopInset:D

    .line 828
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/geometry/Insets;->getRight()D

    move-result-wide v4

    iput-wide v4, v3, Ljavafx/scene/layout/Region;->snappedRightInset:D

    .line 829
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/geometry/Insets;->getBottom()D

    move-result-wide v4

    iput-wide v4, v3, Ljavafx/scene/layout/Region;->snappedBottomInset:D

    .line 830
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/geometry/Insets;->getLeft()D

    move-result-wide v4

    iput-wide v4, v3, Ljavafx/scene/layout/Region;->snappedLeftInset:D

    goto :goto_0
.end method

.method private validateCorners()V
    .locals 24

    .prologue
    .line 2818
    move-object/from16 v2, p0

    .local v2, "this":Ljavafx/scene/layout/Region;
    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/layout/Region;->getWidth()D

    move-result-wide v18

    move-wide/from16 v3, v18

    .line 2819
    .local v3, "width":D
    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/layout/Region;->getHeight()D

    move-result-wide v18

    move-wide/from16 v5, v18

    .line 2820
    .local v5, "height":D
    const/16 v18, 0x0

    move-object/from16 v7, v18

    .line 2821
    .local v7, "newFillCorners":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/layout/CornerRadii;>;"
    const/16 v18, 0x0

    move-object/from16 v8, v18

    .line 2822
    .local v8, "newStrokeCorners":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/layout/CornerRadii;>;"
    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/layout/Region;->getBackground()Ljavafx/scene/layout/Background;

    move-result-object v18

    move-object/from16 v9, v18

    .line 2823
    .local v9, "background":Ljavafx/scene/layout/Background;
    move-object/from16 v18, v9

    if-nez v18, :cond_2

    sget-object v18, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :goto_0
    move-object/from16 v10, v18

    .line 2824
    .local v10, "fills":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/layout/BackgroundFill;>;"
    const/16 v18, 0x0

    move/from16 v11, v18

    .local v11, "i":I
    :goto_1
    move/from16 v18, v11

    move-object/from16 v19, v10

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_3

    .line 2825
    move-object/from16 v18, v10

    move/from16 v19, v11

    invoke-interface/range {v18 .. v19}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljavafx/scene/layout/BackgroundFill;

    move-object/from16 v12, v18

    .line 2826
    .local v12, "fill":Ljavafx/scene/layout/BackgroundFill;
    move-object/from16 v18, v12

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/layout/BackgroundFill;->getRadii()Ljavafx/scene/layout/CornerRadii;

    move-result-object v18

    move-object/from16 v13, v18

    .line 2827
    .local v13, "origRadii":Ljavafx/scene/layout/CornerRadii;
    move-object/from16 v18, v12

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/layout/BackgroundFill;->getInsets()Ljavafx/geometry/Insets;

    move-result-object v18

    move-object/from16 v14, v18

    .line 2828
    .local v14, "origInsets":Ljavafx/geometry/Insets;
    move-object/from16 v18, v13

    move-object/from16 v19, v14

    move-wide/from16 v20, v3

    move-wide/from16 v22, v5

    invoke-static/range {v18 .. v23}, Ljavafx/scene/layout/Region;->normalize(Ljavafx/scene/layout/CornerRadii;Ljavafx/geometry/Insets;DD)Ljavafx/scene/layout/CornerRadii;

    move-result-object v18

    move-object/from16 v15, v18

    .line 2829
    .local v15, "newRadii":Ljavafx/scene/layout/CornerRadii;
    move-object/from16 v18, v13

    move-object/from16 v19, v15

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_1

    .line 2830
    move-object/from16 v18, v7

    if-nez v18, :cond_0

    .line 2831
    move-object/from16 v18, v10

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    new-array v0, v0, [Ljavafx/scene/layout/CornerRadii;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v18

    move-object/from16 v7, v18

    .line 2833
    :cond_0
    move-object/from16 v18, v7

    move/from16 v19, v11

    move-object/from16 v20, v15

    invoke-interface/range {v18 .. v20}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    .line 2824
    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 2823
    .end local v10    # "fills":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/layout/BackgroundFill;>;"
    .end local v11    # "i":I
    .end local v12    # "fill":Ljavafx/scene/layout/BackgroundFill;
    .end local v13    # "origRadii":Ljavafx/scene/layout/CornerRadii;
    .end local v14    # "origInsets":Ljavafx/geometry/Insets;
    .end local v15    # "newRadii":Ljavafx/scene/layout/CornerRadii;
    :cond_2
    move-object/from16 v18, v9

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/layout/Background;->getFills()Ljava/util/List;

    move-result-object v18

    goto :goto_0

    .line 2836
    .restart local v10    # "fills":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/layout/BackgroundFill;>;"
    .restart local v11    # "i":I
    :cond_3
    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/layout/Region;->getBorder()Ljavafx/scene/layout/Border;

    move-result-object v18

    move-object/from16 v11, v18

    .line 2837
    .local v11, "border":Ljavafx/scene/layout/Border;
    move-object/from16 v18, v11

    if-nez v18, :cond_6

    sget-object v18, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :goto_2
    move-object/from16 v12, v18

    .line 2838
    .local v12, "strokes":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/layout/BorderStroke;>;"
    const/16 v18, 0x0

    move/from16 v13, v18

    .local v13, "i":I
    :goto_3
    move/from16 v18, v13

    move-object/from16 v19, v12

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_7

    .line 2839
    move-object/from16 v18, v12

    move/from16 v19, v13

    invoke-interface/range {v18 .. v19}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljavafx/scene/layout/BorderStroke;

    move-object/from16 v14, v18

    .line 2840
    .local v14, "stroke":Ljavafx/scene/layout/BorderStroke;
    move-object/from16 v18, v14

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/layout/BorderStroke;->getRadii()Ljavafx/scene/layout/CornerRadii;

    move-result-object v18

    move-object/from16 v15, v18

    .line 2841
    .local v15, "origRadii":Ljavafx/scene/layout/CornerRadii;
    move-object/from16 v18, v14

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/layout/BorderStroke;->getInsets()Ljavafx/geometry/Insets;

    move-result-object v18

    move-object/from16 v16, v18

    .line 2842
    .local v16, "origInsets":Ljavafx/geometry/Insets;
    move-object/from16 v18, v15

    move-object/from16 v19, v16

    move-wide/from16 v20, v3

    move-wide/from16 v22, v5

    invoke-static/range {v18 .. v23}, Ljavafx/scene/layout/Region;->normalize(Ljavafx/scene/layout/CornerRadii;Ljavafx/geometry/Insets;DD)Ljavafx/scene/layout/CornerRadii;

    move-result-object v18

    move-object/from16 v17, v18

    .line 2843
    .local v17, "newRadii":Ljavafx/scene/layout/CornerRadii;
    move-object/from16 v18, v15

    move-object/from16 v19, v17

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_5

    .line 2844
    move-object/from16 v18, v8

    if-nez v18, :cond_4

    .line 2845
    move-object/from16 v18, v12

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    new-array v0, v0, [Ljavafx/scene/layout/CornerRadii;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v18

    move-object/from16 v8, v18

    .line 2847
    :cond_4
    move-object/from16 v18, v8

    move/from16 v19, v13

    move-object/from16 v20, v17

    invoke-interface/range {v18 .. v20}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    .line 2838
    :cond_5
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 2837
    .end local v12    # "strokes":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/layout/BorderStroke;>;"
    .end local v13    # "i":I
    .end local v14    # "stroke":Ljavafx/scene/layout/BorderStroke;
    .end local v15    # "origRadii":Ljavafx/scene/layout/CornerRadii;
    .end local v16    # "origInsets":Ljavafx/geometry/Insets;
    .end local v17    # "newRadii":Ljavafx/scene/layout/CornerRadii;
    :cond_6
    move-object/from16 v18, v11

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/layout/Border;->getStrokes()Ljava/util/List;

    move-result-object v18

    goto :goto_2

    .line 2850
    .restart local v12    # "strokes":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/layout/BorderStroke;>;"
    .restart local v13    # "i":I
    :cond_7
    move-object/from16 v18, v7

    if-eqz v18, :cond_a

    .line 2851
    const/16 v18, 0x0

    move/from16 v13, v18

    :goto_4
    move/from16 v18, v13

    move-object/from16 v19, v10

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_9

    .line 2852
    move-object/from16 v18, v7

    move/from16 v19, v13

    invoke-interface/range {v18 .. v19}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    if-nez v18, :cond_8

    .line 2853
    move-object/from16 v18, v7

    move/from16 v19, v13

    move-object/from16 v20, v10

    move/from16 v21, v13

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljavafx/scene/layout/BackgroundFill;

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/layout/BackgroundFill;->getRadii()Ljavafx/scene/layout/CornerRadii;

    move-result-object v20

    invoke-interface/range {v18 .. v20}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    .line 2851
    :cond_8
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 2856
    :cond_9
    move-object/from16 v18, v7

    invoke-static/range {v18 .. v18}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v18

    move-object/from16 v7, v18

    .line 2858
    :cond_a
    move-object/from16 v18, v8

    if-eqz v18, :cond_d

    .line 2859
    const/16 v18, 0x0

    move/from16 v13, v18

    :goto_5
    move/from16 v18, v13

    move-object/from16 v19, v12

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_c

    .line 2860
    move-object/from16 v18, v8

    move/from16 v19, v13

    invoke-interface/range {v18 .. v19}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    if-nez v18, :cond_b

    .line 2861
    move-object/from16 v18, v8

    move/from16 v19, v13

    move-object/from16 v20, v12

    move/from16 v21, v13

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljavafx/scene/layout/BorderStroke;

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/layout/BorderStroke;->getRadii()Ljavafx/scene/layout/CornerRadii;

    move-result-object v20

    invoke-interface/range {v18 .. v20}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    .line 2859
    :cond_b
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    .line 2864
    :cond_c
    move-object/from16 v18, v8

    invoke-static/range {v18 .. v18}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v18

    move-object/from16 v8, v18

    .line 2866
    :cond_d
    move-object/from16 v18, v2

    move-object/from16 v19, v7

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Ljavafx/scene/layout/Region;->normalizedFillCorners:Ljava/util/List;

    .line 2867
    move-object/from16 v18, v2

    move-object/from16 v19, v8

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Ljavafx/scene/layout/Region;->normalizedStrokeCorners:Ljava/util/List;

    .line 2868
    move-object/from16 v18, v2

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Ljavafx/scene/layout/Region;->cornersValid:Z

    .line 2869
    return-void
.end method

.method private widthChanged(D)V
    .locals 9

    .prologue
    .line 868
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/layout/Region;
    move-wide v2, p1

    .local v2, "value":D
    move-wide v4, v2

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/layout/Region;->_width:D

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_0

    .line 869
    move-object v4, v1

    move-wide v5, v2

    iput-wide v5, v4, Ljavafx/scene/layout/Region;->_width:D

    .line 870
    move-object v4, v1

    const/4 v5, 0x0

    iput-boolean v5, v4, Ljavafx/scene/layout/Region;->cornersValid:Z

    .line 871
    move-object v4, v1

    const/4 v5, 0x0

    iput-object v5, v4, Ljavafx/scene/layout/Region;->boundingBox:Ljavafx/geometry/Bounds;

    .line 872
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/layout/Region;->impl_layoutBoundsChanged()V

    .line 873
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/layout/Region;->impl_geomChanged()V

    .line 874
    move-object v4, v1

    sget-object v5, Lcom/sun/javafx/scene/DirtyBits;->NODE_GEOMETRY:Lcom/sun/javafx/scene/DirtyBits;

    invoke-virtual {v4, v5}, Ljavafx/scene/layout/Region;->impl_markDirty(Lcom/sun/javafx/scene/DirtyBits;)V

    .line 875
    move-object v4, v1

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljavafx/scene/layout/Region;->setNeedsLayout(Z)V

    .line 876
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/layout/Region;->requestParentLayout()V

    .line 878
    :cond_0
    return-void
.end method


# virtual methods
.method addImageListener(Ljavafx/scene/image/Image;)V
    .locals 5

    .prologue
    .line 687
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Region;
    move-object v1, p1

    .local v1, "image":Ljavafx/scene/image/Image;
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getImageAccessor()Lcom/sun/javafx/tk/Toolkit$ImageAccessor;

    move-result-object v3

    move-object v2, v3

    .line 688
    .local v2, "acc":Lcom/sun/javafx/tk/Toolkit$ImageAccessor;
    move-object v3, v2

    move-object v4, v1

    invoke-interface {v3, v4}, Lcom/sun/javafx/tk/Toolkit$ImageAccessor;->getImageProperty(Ljavafx/scene/image/Image;)Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/layout/Region;->imageChangeListener:Ljavafx/beans/InvalidationListener;

    invoke-virtual {v3, v4}, Ljavafx/beans/property/ReadOnlyObjectProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 689
    return-void
.end method

.method adjustHeightByMargin(DLjavafx/geometry/Insets;)D
    .locals 11

    .prologue
    .line 216
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/layout/Region;
    move-wide v2, p1

    .local v2, "height":D
    move-object v4, p3

    .local v4, "margin":Ljavafx/geometry/Insets;
    move-object v6, v4

    if-eqz v6, :cond_0

    move-object v6, v4

    sget-object v7, Ljavafx/geometry/Insets;->EMPTY:Ljavafx/geometry/Insets;

    if-ne v6, v7, :cond_1

    .line 217
    :cond_0
    move-wide v6, v2

    move-wide v1, v6

    .line 220
    .end local v1    # "this":Ljavafx/scene/layout/Region;
    :goto_0
    return-wide v1

    .line 219
    .restart local v1    # "this":Ljavafx/scene/layout/Region;
    :cond_1
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/layout/Region;->isSnapToPixel()Z

    move-result v6

    move v5, v6

    .line 220
    .local v5, "isSnapToPixel":Z
    move-wide v6, v2

    move-object v8, v4

    invoke-virtual {v8}, Ljavafx/geometry/Insets;->getTop()D

    move-result-wide v8

    move v10, v5

    invoke-static {v8, v9, v10}, Ljavafx/scene/layout/Region;->snapSpace(DZ)D

    move-result-wide v8

    sub-double/2addr v6, v8

    move-object v8, v4

    invoke-virtual {v8}, Ljavafx/geometry/Insets;->getBottom()D

    move-result-wide v8

    move v10, v5

    invoke-static {v8, v9, v10}, Ljavafx/scene/layout/Region;->snapSpace(DZ)D

    move-result-wide v8

    sub-double/2addr v6, v8

    move-wide v1, v6

    goto :goto_0
.end method

.method adjustWidthByMargin(DLjavafx/geometry/Insets;)D
    .locals 11

    .prologue
    .line 208
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/layout/Region;
    move-wide v2, p1

    .local v2, "width":D
    move-object v4, p3

    .local v4, "margin":Ljavafx/geometry/Insets;
    move-object v6, v4

    if-eqz v6, :cond_0

    move-object v6, v4

    sget-object v7, Ljavafx/geometry/Insets;->EMPTY:Ljavafx/geometry/Insets;

    if-ne v6, v7, :cond_1

    .line 209
    :cond_0
    move-wide v6, v2

    move-wide v1, v6

    .line 212
    .end local v1    # "this":Ljavafx/scene/layout/Region;
    :goto_0
    return-wide v1

    .line 211
    .restart local v1    # "this":Ljavafx/scene/layout/Region;
    :cond_1
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/layout/Region;->isSnapToPixel()Z

    move-result v6

    move v5, v6

    .line 212
    .local v5, "isSnapToPixel":Z
    move-wide v6, v2

    move-object v8, v4

    invoke-virtual {v8}, Ljavafx/geometry/Insets;->getLeft()D

    move-result-wide v8

    move v10, v5

    invoke-static {v8, v9, v10}, Ljavafx/scene/layout/Region;->snapSpace(DZ)D

    move-result-wide v8

    sub-double/2addr v6, v8

    move-object v8, v4

    invoke-virtual {v8}, Ljavafx/geometry/Insets;->getRight()D

    move-result-wide v8

    move v10, v5

    invoke-static {v8, v9, v10}, Ljavafx/scene/layout/Region;->snapSpace(DZ)D

    move-result-wide v8

    sub-double/2addr v6, v8

    move-wide v1, v6

    goto :goto_0
.end method

.method public final backgroundProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/layout/Background;",
            ">;"
        }
    .end annotation

    .prologue
    .line 619
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Region;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/Region;->background:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/Region;
    return-object v0
.end method

.method public final borderProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/layout/Border;",
            ">;"
        }
    .end annotation

    .prologue
    .line 678
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Region;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/Region;->border:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/Region;
    return-object v0
.end method

.method public final cacheShapeProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 7

    .prologue
    .line 1326
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Region;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/Region;->cacheShape:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    .line 1327
    move-object v1, v0

    new-instance v2, Ljavafx/scene/layout/Region$10;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Ljavafx/scene/layout/Region$10;-><init>(Ljavafx/scene/layout/Region;Z)V

    iput-object v2, v1, Ljavafx/scene/layout/Region;->cacheShape:Ljavafx/beans/property/BooleanProperty;

    .line 1335
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/Region;->cacheShape:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/Region;
    return-object v0
.end method

.method public final centerShapeProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 7

    .prologue
    .line 1298
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Region;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/Region;->centerShape:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    .line 1299
    move-object v1, v0

    new-instance v2, Ljavafx/scene/layout/Region$9;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Ljavafx/scene/layout/Region$9;-><init>(Ljavafx/scene/layout/Region;Z)V

    iput-object v2, v1, Ljavafx/scene/layout/Region;->centerShape:Ljavafx/beans/property/BooleanProperty;

    .line 1311
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/Region;->centerShape:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/Region;
    return-object v0
.end method

.method computeChildMaxAreaHeight(Ljavafx/scene/Node;DLjavafx/geometry/Insets;D)D
    .locals 31

    .prologue
    .line 1799
    move-object/from16 v2, p0

    .local v2, "this":Ljavafx/scene/layout/Region;
    move-object/from16 v3, p1

    .local v3, "child":Ljavafx/scene/Node;
    move-wide/from16 v4, p2

    .local v4, "maxBaselineComplement":D
    move-object/from16 v6, p4

    .local v6, "margin":Ljavafx/geometry/Insets;
    move-wide/from16 v7, p5

    .local v7, "width":D
    move-object/from16 v22, v3

    const-wide/high16 v23, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v22 .. v24}, Ljavafx/scene/Node;->maxHeight(D)D

    move-result-wide v22

    move-wide/from16 v9, v22

    .line 1800
    .local v9, "max":D
    move-wide/from16 v22, v9

    const-wide v24, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpl-double v22, v22, v24

    if-nez v22, :cond_0

    .line 1801
    move-wide/from16 v22, v9

    move-wide/from16 v2, v22

    .line 1826
    .end local v2    # "this":Ljavafx/scene/layout/Region;
    :goto_0
    return-wide v2

    .line 1804
    .restart local v2    # "this":Ljavafx/scene/layout/Region;
    :cond_0
    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/layout/Region;->isSnapToPixel()Z

    move-result v22

    move/from16 v11, v22

    .line 1805
    .local v11, "snap":Z
    move-object/from16 v22, v6

    if-eqz v22, :cond_2

    move-object/from16 v22, v6

    invoke-virtual/range {v22 .. v22}, Ljavafx/geometry/Insets;->getTop()D

    move-result-wide v22

    move/from16 v24, v11

    invoke-static/range {v22 .. v24}, Ljavafx/scene/layout/Region;->snapSpace(DZ)D

    move-result-wide v22

    :goto_1
    move-wide/from16 v12, v22

    .line 1806
    .local v12, "top":D
    move-object/from16 v22, v6

    if-eqz v22, :cond_3

    move-object/from16 v22, v6

    invoke-virtual/range {v22 .. v22}, Ljavafx/geometry/Insets;->getBottom()D

    move-result-wide v22

    move/from16 v24, v11

    invoke-static/range {v22 .. v24}, Ljavafx/scene/layout/Region;->snapSpace(DZ)D

    move-result-wide v22

    :goto_2
    move-wide/from16 v14, v22

    .line 1807
    .local v14, "bottom":D
    const-wide/high16 v22, -0x4010000000000000L    # -1.0

    move-wide/from16 v16, v22

    .line 1808
    .local v16, "alt":D
    move-object/from16 v22, v3

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/Node;->isResizable()Z

    move-result v22

    if-eqz v22, :cond_1

    move-object/from16 v22, v3

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/Node;->getContentBias()Ljavafx/geometry/Orientation;

    move-result-object v22

    sget-object v23, Ljavafx/geometry/Orientation;->HORIZONTAL:Ljavafx/geometry/Orientation;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_1

    .line 1809
    move-object/from16 v22, v6

    if-eqz v22, :cond_4

    move-object/from16 v22, v6

    invoke-virtual/range {v22 .. v22}, Ljavafx/geometry/Insets;->getLeft()D

    move-result-wide v22

    move/from16 v24, v11

    invoke-static/range {v22 .. v24}, Ljavafx/scene/layout/Region;->snapSpace(DZ)D

    move-result-wide v22

    :goto_3
    move-wide/from16 v18, v22

    .line 1810
    .local v18, "left":D
    move-object/from16 v22, v6

    if-eqz v22, :cond_5

    move-object/from16 v22, v6

    invoke-virtual/range {v22 .. v22}, Ljavafx/geometry/Insets;->getRight()D

    move-result-wide v22

    move/from16 v24, v11

    invoke-static/range {v22 .. v24}, Ljavafx/scene/layout/Region;->snapSpace(DZ)D

    move-result-wide v22

    :goto_4
    move-wide/from16 v20, v22

    .line 1811
    .local v20, "right":D
    move-object/from16 v22, v2

    move-wide/from16 v23, v7

    const-wide/high16 v25, -0x4010000000000000L    # -1.0

    cmpl-double v23, v23, v25

    if-eqz v23, :cond_6

    move-object/from16 v23, v3

    const-wide/high16 v24, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v23 .. v25}, Ljavafx/scene/Node;->minWidth(D)D

    move-result-wide v23

    move-wide/from16 v25, v7

    move-wide/from16 v27, v18

    sub-double v25, v25, v27

    move-wide/from16 v27, v20

    sub-double v25, v25, v27

    move-object/from16 v27, v3

    const-wide/high16 v28, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v27 .. v29}, Ljavafx/scene/Node;->maxWidth(D)D

    move-result-wide v27

    invoke-static/range {v23 .. v28}, Ljavafx/scene/layout/Region;->boundedSize(DDD)D

    move-result-wide v23

    :goto_5
    invoke-virtual/range {v22 .. v24}, Ljavafx/scene/layout/Region;->snapSize(D)D

    move-result-wide v22

    move-wide/from16 v16, v22

    .line 1813
    move-object/from16 v22, v3

    move-wide/from16 v23, v16

    invoke-virtual/range {v22 .. v24}, Ljavafx/scene/Node;->maxHeight(D)D

    move-result-wide v22

    move-wide/from16 v9, v22

    .line 1816
    .end local v18    # "left":D
    .end local v20    # "right":D
    :cond_1
    move-wide/from16 v22, v4

    const-wide/high16 v24, -0x4010000000000000L    # -1.0

    cmpl-double v22, v22, v24

    if-eqz v22, :cond_8

    .line 1817
    move-object/from16 v22, v3

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/Node;->getBaselineOffset()D

    move-result-wide v22

    move-wide/from16 v18, v22

    .line 1818
    .local v18, "baseline":D
    move-object/from16 v22, v3

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/Node;->isResizable()Z

    move-result v22

    if-eqz v22, :cond_7

    move-wide/from16 v22, v18

    const-wide/high16 v24, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v22, v22, v24

    if-nez v22, :cond_7

    .line 1819
    move-wide/from16 v22, v12

    move-object/from16 v24, v2

    move-object/from16 v25, v3

    move-wide/from16 v26, v16

    invoke-virtual/range {v25 .. v27}, Ljavafx/scene/Node;->minHeight(D)D

    move-result-wide v25

    move-object/from16 v27, v3

    move-wide/from16 v28, v16

    invoke-virtual/range {v27 .. v29}, Ljavafx/scene/Node;->maxHeight(D)D

    move-result-wide v27

    const-wide v29, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-static/range {v25 .. v30}, Ljavafx/scene/layout/Region;->boundedSize(DDD)D

    move-result-wide v25

    invoke-virtual/range {v24 .. v26}, Ljavafx/scene/layout/Region;->snapSize(D)D

    move-result-wide v24

    add-double v22, v22, v24

    move-wide/from16 v24, v14

    add-double v22, v22, v24

    move-wide/from16 v24, v4

    add-double v22, v22, v24

    move-wide/from16 v2, v22

    goto/16 :goto_0

    .line 1805
    .end local v12    # "top":D
    .end local v14    # "bottom":D
    .end local v16    # "alt":D
    .end local v18    # "baseline":D
    :cond_2
    const-wide/16 v22, 0x0

    goto/16 :goto_1

    .line 1806
    .restart local v12    # "top":D
    :cond_3
    const-wide/16 v22, 0x0

    goto/16 :goto_2

    .line 1809
    .restart local v14    # "bottom":D
    .restart local v16    # "alt":D
    :cond_4
    const-wide/16 v22, 0x0

    goto/16 :goto_3

    .line 1810
    .local v18, "left":D
    :cond_5
    const-wide/16 v22, 0x0

    goto/16 :goto_4

    .line 1811
    .restart local v20    # "right":D
    :cond_6
    move-object/from16 v23, v3

    const-wide/high16 v24, -0x4010000000000000L    # -1.0

    .line 1812
    invoke-virtual/range {v23 .. v25}, Ljavafx/scene/Node;->minWidth(D)D

    move-result-wide v23

    goto :goto_5

    .line 1822
    .end local v20    # "right":D
    .local v18, "baseline":D
    :cond_7
    move-wide/from16 v22, v12

    move-wide/from16 v24, v18

    add-double v22, v22, v24

    move-wide/from16 v24, v4

    add-double v22, v22, v24

    move-wide/from16 v24, v14

    add-double v22, v22, v24

    move-wide/from16 v2, v22

    goto/16 :goto_0

    .line 1826
    .end local v18    # "baseline":D
    :cond_8
    move-wide/from16 v22, v12

    move-object/from16 v24, v2

    move-object/from16 v25, v3

    move-wide/from16 v26, v16

    invoke-virtual/range {v25 .. v27}, Ljavafx/scene/Node;->minHeight(D)D

    move-result-wide v25

    move-wide/from16 v27, v9

    const-wide v29, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-static/range {v25 .. v30}, Ljavafx/scene/layout/Region;->boundedSize(DDD)D

    move-result-wide v25

    invoke-virtual/range {v24 .. v26}, Ljavafx/scene/layout/Region;->snapSize(D)D

    move-result-wide v24

    add-double v22, v22, v24

    move-wide/from16 v24, v14

    add-double v22, v22, v24

    move-wide/from16 v2, v22

    goto/16 :goto_0
.end method

.method computeChildMaxAreaWidth(Ljavafx/scene/Node;DLjavafx/geometry/Insets;DZ)D
    .locals 37

    .prologue
    .line 1767
    move-object/from16 v3, p0

    .local v3, "this":Ljavafx/scene/layout/Region;
    move-object/from16 v4, p1

    .local v4, "child":Ljavafx/scene/Node;
    move-wide/from16 v5, p2

    .local v5, "baselineComplement":D
    move-object/from16 v7, p4

    .local v7, "margin":Ljavafx/geometry/Insets;
    move-wide/from16 v8, p5

    .local v8, "height":D
    move/from16 v10, p7

    .local v10, "fillHeight":Z
    move-object/from16 v28, v4

    const-wide/high16 v29, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v28 .. v30}, Ljavafx/scene/Node;->maxWidth(D)D

    move-result-wide v28

    move-wide/from16 v11, v28

    .line 1768
    .local v11, "max":D
    move-wide/from16 v28, v11

    const-wide v30, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpl-double v28, v28, v30

    if-nez v28, :cond_0

    .line 1769
    move-wide/from16 v28, v11

    move-wide/from16 v3, v28

    .line 1795
    .end local v3    # "this":Ljavafx/scene/layout/Region;
    :goto_0
    return-wide v3

    .line 1771
    .restart local v3    # "this":Ljavafx/scene/layout/Region;
    :cond_0
    move-object/from16 v28, v3

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/layout/Region;->isSnapToPixel()Z

    move-result v28

    move/from16 v13, v28

    .line 1772
    .local v13, "snap":Z
    move-object/from16 v28, v7

    if-eqz v28, :cond_2

    move-object/from16 v28, v7

    invoke-virtual/range {v28 .. v28}, Ljavafx/geometry/Insets;->getLeft()D

    move-result-wide v28

    move/from16 v30, v13

    invoke-static/range {v28 .. v30}, Ljavafx/scene/layout/Region;->snapSpace(DZ)D

    move-result-wide v28

    :goto_1
    move-wide/from16 v14, v28

    .line 1773
    .local v14, "left":D
    move-object/from16 v28, v7

    if-eqz v28, :cond_3

    move-object/from16 v28, v7

    invoke-virtual/range {v28 .. v28}, Ljavafx/geometry/Insets;->getRight()D

    move-result-wide v28

    move/from16 v30, v13

    invoke-static/range {v28 .. v30}, Ljavafx/scene/layout/Region;->snapSpace(DZ)D

    move-result-wide v28

    :goto_2
    move-wide/from16 v16, v28

    .line 1774
    .local v16, "right":D
    const-wide/high16 v28, -0x4010000000000000L    # -1.0

    move-wide/from16 v18, v28

    .line 1775
    .local v18, "alt":D
    move-wide/from16 v28, v8

    const-wide/high16 v30, -0x4010000000000000L    # -1.0

    cmpl-double v28, v28, v30

    if-eqz v28, :cond_1

    move-object/from16 v28, v4

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/Node;->isResizable()Z

    move-result v28

    if-eqz v28, :cond_1

    move-object/from16 v28, v4

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/Node;->getContentBias()Ljavafx/geometry/Orientation;

    move-result-object v28

    sget-object v29, Ljavafx/geometry/Orientation;->VERTICAL:Ljavafx/geometry/Orientation;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_1

    .line 1776
    move-object/from16 v28, v7

    if-eqz v28, :cond_4

    move-object/from16 v28, v7

    invoke-virtual/range {v28 .. v28}, Ljavafx/geometry/Insets;->getTop()D

    move-result-wide v28

    move/from16 v30, v13

    invoke-static/range {v28 .. v30}, Ljavafx/scene/layout/Region;->snapSpace(DZ)D

    move-result-wide v28

    :goto_3
    move-wide/from16 v20, v28

    .line 1777
    .local v20, "top":D
    move-object/from16 v28, v7

    if-eqz v28, :cond_5

    move-object/from16 v28, v7

    invoke-virtual/range {v28 .. v28}, Ljavafx/geometry/Insets;->getBottom()D

    move-result-wide v28

    move/from16 v30, v13

    invoke-static/range {v28 .. v30}, Ljavafx/scene/layout/Region;->snapSpace(DZ)D

    move-result-wide v28

    :goto_4
    move-wide/from16 v22, v28

    .line 1778
    .local v22, "bottom":D
    move-object/from16 v28, v4

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/Node;->getBaselineOffset()D

    move-result-wide v28

    move-wide/from16 v24, v28

    .line 1779
    .local v24, "bo":D
    move-wide/from16 v28, v24

    const-wide/high16 v30, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v28, v28, v30

    if-nez v28, :cond_6

    move-wide/from16 v28, v5

    const-wide/high16 v30, -0x4010000000000000L    # -1.0

    cmpl-double v28, v28, v30

    if-eqz v28, :cond_6

    move-wide/from16 v28, v8

    move-wide/from16 v30, v20

    sub-double v28, v28, v30

    move-wide/from16 v30, v22

    sub-double v28, v28, v30

    move-wide/from16 v30, v5

    sub-double v28, v28, v30

    :goto_5
    move-wide/from16 v26, v28

    .line 1782
    .local v26, "contentHeight":D
    move/from16 v28, v10

    if-eqz v28, :cond_7

    .line 1783
    move-object/from16 v28, v3

    move-object/from16 v29, v4

    const-wide/high16 v30, -0x4010000000000000L    # -1.0

    .line 1784
    invoke-virtual/range {v29 .. v31}, Ljavafx/scene/Node;->minHeight(D)D

    move-result-wide v29

    move-wide/from16 v31, v26

    move-object/from16 v33, v4

    const-wide/high16 v34, -0x4010000000000000L    # -1.0

    .line 1785
    invoke-virtual/range {v33 .. v35}, Ljavafx/scene/Node;->maxHeight(D)D

    move-result-wide v33

    .line 1783
    invoke-static/range {v29 .. v34}, Ljavafx/scene/layout/Region;->boundedSize(DDD)D

    move-result-wide v29

    invoke-virtual/range {v28 .. v30}, Ljavafx/scene/layout/Region;->snapSize(D)D

    move-result-wide v28

    move-wide/from16 v18, v28

    .line 1792
    :goto_6
    move-object/from16 v28, v4

    move-wide/from16 v29, v18

    invoke-virtual/range {v28 .. v30}, Ljavafx/scene/Node;->maxWidth(D)D

    move-result-wide v28

    move-wide/from16 v11, v28

    .line 1795
    .end local v20    # "top":D
    .end local v22    # "bottom":D
    .end local v24    # "bo":D
    .end local v26    # "contentHeight":D
    :cond_1
    move-wide/from16 v28, v14

    move-object/from16 v30, v3

    move-object/from16 v31, v4

    move-wide/from16 v32, v18

    invoke-virtual/range {v31 .. v33}, Ljavafx/scene/Node;->minWidth(D)D

    move-result-wide v31

    move-wide/from16 v33, v11

    const-wide v35, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-static/range {v31 .. v36}, Ljavafx/scene/layout/Region;->boundedSize(DDD)D

    move-result-wide v31

    invoke-virtual/range {v30 .. v32}, Ljavafx/scene/layout/Region;->snapSize(D)D

    move-result-wide v30

    add-double v28, v28, v30

    move-wide/from16 v30, v16

    add-double v28, v28, v30

    move-wide/from16 v3, v28

    goto/16 :goto_0

    .line 1772
    .end local v14    # "left":D
    .end local v16    # "right":D
    .end local v18    # "alt":D
    :cond_2
    const-wide/16 v28, 0x0

    goto/16 :goto_1

    .line 1773
    .restart local v14    # "left":D
    :cond_3
    const-wide/16 v28, 0x0

    goto/16 :goto_2

    .line 1776
    .restart local v16    # "right":D
    .restart local v18    # "alt":D
    :cond_4
    const-wide/16 v28, 0x0

    goto/16 :goto_3

    .line 1777
    .restart local v20    # "top":D
    :cond_5
    const-wide/16 v28, 0x0

    goto/16 :goto_4

    .line 1779
    .restart local v22    # "bottom":D
    .restart local v24    # "bo":D
    :cond_6
    move-wide/from16 v28, v8

    move-wide/from16 v30, v20

    sub-double v28, v28, v30

    move-wide/from16 v30, v22

    sub-double v28, v28, v30

    goto :goto_5

    .line 1787
    .restart local v26    # "contentHeight":D
    :cond_7
    move-object/from16 v28, v3

    move-object/from16 v29, v4

    const-wide/high16 v30, -0x4010000000000000L    # -1.0

    .line 1788
    invoke-virtual/range {v29 .. v31}, Ljavafx/scene/Node;->minHeight(D)D

    move-result-wide v29

    move-object/from16 v31, v4

    const-wide/high16 v32, -0x4010000000000000L    # -1.0

    .line 1789
    invoke-virtual/range {v31 .. v33}, Ljavafx/scene/Node;->prefHeight(D)D

    move-result-wide v31

    move-object/from16 v33, v4

    const-wide/high16 v34, -0x4010000000000000L    # -1.0

    .line 1790
    invoke-virtual/range {v33 .. v35}, Ljavafx/scene/Node;->maxHeight(D)D

    move-result-wide v33

    move-wide/from16 v35, v26

    invoke-static/range {v33 .. v36}, Ljava/lang/Math;->min(DD)D

    move-result-wide v33

    .line 1787
    invoke-static/range {v29 .. v34}, Ljavafx/scene/layout/Region;->boundedSize(DDD)D

    move-result-wide v29

    invoke-virtual/range {v28 .. v30}, Ljavafx/scene/layout/Region;->snapSize(D)D

    move-result-wide v28

    move-wide/from16 v18, v28

    goto :goto_6
.end method

.method computeChildMinAreaHeight(Ljavafx/scene/Node;DLjavafx/geometry/Insets;D)D
    .locals 28

    .prologue
    .line 1675
    move-object/from16 v2, p0

    .local v2, "this":Ljavafx/scene/layout/Region;
    move-object/from16 v3, p1

    .local v3, "child":Ljavafx/scene/Node;
    move-wide/from16 v4, p2

    .local v4, "minBaselineComplement":D
    move-object/from16 v6, p4

    .local v6, "margin":Ljavafx/geometry/Insets;
    move-wide/from16 v7, p5

    .local v7, "width":D
    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/layout/Region;->isSnapToPixel()Z

    move-result v20

    move/from16 v9, v20

    .line 1676
    .local v9, "snap":Z
    move-object/from16 v20, v6

    if-eqz v20, :cond_1

    move-object/from16 v20, v6

    invoke-virtual/range {v20 .. v20}, Ljavafx/geometry/Insets;->getTop()D

    move-result-wide v20

    move/from16 v22, v9

    invoke-static/range {v20 .. v22}, Ljavafx/scene/layout/Region;->snapSpace(DZ)D

    move-result-wide v20

    :goto_0
    move-wide/from16 v10, v20

    .line 1677
    .local v10, "top":D
    move-object/from16 v20, v6

    if-eqz v20, :cond_2

    move-object/from16 v20, v6

    invoke-virtual/range {v20 .. v20}, Ljavafx/geometry/Insets;->getBottom()D

    move-result-wide v20

    move/from16 v22, v9

    invoke-static/range {v20 .. v22}, Ljavafx/scene/layout/Region;->snapSpace(DZ)D

    move-result-wide v20

    :goto_1
    move-wide/from16 v12, v20

    .line 1679
    .local v12, "bottom":D
    const-wide/high16 v20, -0x4010000000000000L    # -1.0

    move-wide/from16 v14, v20

    .line 1680
    .local v14, "alt":D
    move-object/from16 v20, v3

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/Node;->isResizable()Z

    move-result v20

    if-eqz v20, :cond_0

    move-object/from16 v20, v3

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/Node;->getContentBias()Ljavafx/geometry/Orientation;

    move-result-object v20

    sget-object v21, Ljavafx/geometry/Orientation;->HORIZONTAL:Ljavafx/geometry/Orientation;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_0

    .line 1681
    move-object/from16 v20, v6

    if-eqz v20, :cond_3

    move-object/from16 v20, v6

    invoke-virtual/range {v20 .. v20}, Ljavafx/geometry/Insets;->getLeft()D

    move-result-wide v20

    move/from16 v22, v9

    invoke-static/range {v20 .. v22}, Ljavafx/scene/layout/Region;->snapSpace(DZ)D

    move-result-wide v20

    :goto_2
    move-wide/from16 v16, v20

    .line 1682
    .local v16, "left":D
    move-object/from16 v20, v6

    if-eqz v20, :cond_4

    move-object/from16 v20, v6

    invoke-virtual/range {v20 .. v20}, Ljavafx/geometry/Insets;->getRight()D

    move-result-wide v20

    move/from16 v22, v9

    invoke-static/range {v20 .. v22}, Ljavafx/scene/layout/Region;->snapSpace(DZ)D

    move-result-wide v20

    :goto_3
    move-wide/from16 v18, v20

    .line 1683
    .local v18, "right":D
    move-object/from16 v20, v2

    move-wide/from16 v21, v7

    const-wide/high16 v23, -0x4010000000000000L    # -1.0

    cmpl-double v21, v21, v23

    if-eqz v21, :cond_5

    move-object/from16 v21, v3

    const-wide/high16 v22, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v21 .. v23}, Ljavafx/scene/Node;->minWidth(D)D

    move-result-wide v21

    move-wide/from16 v23, v7

    move-wide/from16 v25, v16

    sub-double v23, v23, v25

    move-wide/from16 v25, v18

    sub-double v23, v23, v25

    move-object/from16 v25, v3

    const-wide/high16 v26, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v25 .. v27}, Ljavafx/scene/Node;->maxWidth(D)D

    move-result-wide v25

    invoke-static/range {v21 .. v26}, Ljavafx/scene/layout/Region;->boundedSize(DDD)D

    move-result-wide v21

    :goto_4
    invoke-virtual/range {v20 .. v22}, Ljavafx/scene/layout/Region;->snapSize(D)D

    move-result-wide v20

    move-wide/from16 v14, v20

    .line 1688
    .end local v16    # "left":D
    .end local v18    # "right":D
    :cond_0
    move-wide/from16 v20, v4

    const-wide/high16 v22, -0x4010000000000000L    # -1.0

    cmpl-double v20, v20, v22

    if-eqz v20, :cond_7

    .line 1689
    move-object/from16 v20, v3

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/Node;->getBaselineOffset()D

    move-result-wide v20

    move-wide/from16 v16, v20

    .line 1690
    .local v16, "baseline":D
    move-object/from16 v20, v3

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/Node;->isResizable()Z

    move-result v20

    if-eqz v20, :cond_6

    move-wide/from16 v20, v16

    const-wide/high16 v22, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v20, v20, v22

    if-nez v20, :cond_6

    .line 1691
    move-wide/from16 v20, v10

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-wide/from16 v24, v14

    invoke-virtual/range {v23 .. v25}, Ljavafx/scene/Node;->minHeight(D)D

    move-result-wide v23

    invoke-virtual/range {v22 .. v24}, Ljavafx/scene/layout/Region;->snapSize(D)D

    move-result-wide v22

    add-double v20, v20, v22

    move-wide/from16 v22, v12

    add-double v20, v20, v22

    move-wide/from16 v22, v4

    add-double v20, v20, v22

    move-wide/from16 v2, v20

    .line 1697
    .end local v2    # "this":Ljavafx/scene/layout/Region;
    .end local v16    # "baseline":D
    :goto_5
    return-wide v2

    .line 1676
    .end local v10    # "top":D
    .end local v12    # "bottom":D
    .end local v14    # "alt":D
    .restart local v2    # "this":Ljavafx/scene/layout/Region;
    :cond_1
    const-wide/16 v20, 0x0

    goto/16 :goto_0

    .line 1677
    .restart local v10    # "top":D
    :cond_2
    const-wide/16 v20, 0x0

    goto/16 :goto_1

    .line 1681
    .restart local v12    # "bottom":D
    .restart local v14    # "alt":D
    :cond_3
    const-wide/16 v20, 0x0

    goto/16 :goto_2

    .line 1682
    .local v16, "left":D
    :cond_4
    const-wide/16 v20, 0x0

    goto :goto_3

    .line 1683
    .restart local v18    # "right":D
    :cond_5
    move-object/from16 v21, v3

    const-wide/high16 v22, -0x4010000000000000L    # -1.0

    .line 1684
    invoke-virtual/range {v21 .. v23}, Ljavafx/scene/Node;->maxWidth(D)D

    move-result-wide v21

    goto :goto_4

    .line 1694
    .end local v18    # "right":D
    .local v16, "baseline":D
    :cond_6
    move-wide/from16 v20, v16

    move-wide/from16 v22, v4

    add-double v20, v20, v22

    move-wide/from16 v2, v20

    goto :goto_5

    .line 1697
    .end local v16    # "baseline":D
    :cond_7
    move-wide/from16 v20, v10

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-wide/from16 v24, v14

    invoke-virtual/range {v23 .. v25}, Ljavafx/scene/Node;->minHeight(D)D

    move-result-wide v23

    invoke-virtual/range {v22 .. v24}, Ljavafx/scene/layout/Region;->snapSize(D)D

    move-result-wide v22

    add-double v20, v20, v22

    move-wide/from16 v22, v12

    add-double v20, v20, v22

    move-wide/from16 v2, v20

    goto :goto_5
.end method

.method computeChildMinAreaHeight(Ljavafx/scene/Node;Ljavafx/geometry/Insets;)D
    .locals 10

    .prologue
    .line 1671
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Region;
    move-object v1, p1

    .local v1, "child":Ljavafx/scene/Node;
    move-object v2, p2

    .local v2, "margin":Ljavafx/geometry/Insets;
    move-object v3, v0

    move-object v4, v1

    const-wide/high16 v5, -0x4010000000000000L    # -1.0

    move-object v7, v2

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v3 .. v9}, Ljavafx/scene/layout/Region;->computeChildMinAreaHeight(Ljavafx/scene/Node;DLjavafx/geometry/Insets;D)D

    move-result-wide v3

    move-wide v0, v3

    .end local v0    # "this":Ljavafx/scene/layout/Region;
    return-wide v0
.end method

.method computeChildMinAreaWidth(Ljavafx/scene/Node;DLjavafx/geometry/Insets;DZ)D
    .locals 35

    .prologue
    .line 1645
    move-object/from16 v3, p0

    .local v3, "this":Ljavafx/scene/layout/Region;
    move-object/from16 v4, p1

    .local v4, "child":Ljavafx/scene/Node;
    move-wide/from16 v5, p2

    .local v5, "baselineComplement":D
    move-object/from16 v7, p4

    .local v7, "margin":Ljavafx/geometry/Insets;
    move-wide/from16 v8, p5

    .local v8, "height":D
    move/from16 v10, p7

    .local v10, "fillHeight":Z
    move-object/from16 v26, v3

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/layout/Region;->isSnapToPixel()Z

    move-result v26

    move/from16 v11, v26

    .line 1646
    .local v11, "snap":Z
    move-object/from16 v26, v7

    if-eqz v26, :cond_1

    move-object/from16 v26, v7

    invoke-virtual/range {v26 .. v26}, Ljavafx/geometry/Insets;->getLeft()D

    move-result-wide v26

    move/from16 v28, v11

    invoke-static/range {v26 .. v28}, Ljavafx/scene/layout/Region;->snapSpace(DZ)D

    move-result-wide v26

    :goto_0
    move-wide/from16 v12, v26

    .line 1647
    .local v12, "left":D
    move-object/from16 v26, v7

    if-eqz v26, :cond_2

    move-object/from16 v26, v7

    invoke-virtual/range {v26 .. v26}, Ljavafx/geometry/Insets;->getRight()D

    move-result-wide v26

    move/from16 v28, v11

    invoke-static/range {v26 .. v28}, Ljavafx/scene/layout/Region;->snapSpace(DZ)D

    move-result-wide v26

    :goto_1
    move-wide/from16 v14, v26

    .line 1648
    .local v14, "right":D
    const-wide/high16 v26, -0x4010000000000000L    # -1.0

    move-wide/from16 v16, v26

    .line 1649
    .local v16, "alt":D
    move-wide/from16 v26, v8

    const-wide/high16 v28, -0x4010000000000000L    # -1.0

    cmpl-double v26, v26, v28

    if-eqz v26, :cond_0

    move-object/from16 v26, v4

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/Node;->isResizable()Z

    move-result v26

    if-eqz v26, :cond_0

    move-object/from16 v26, v4

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/Node;->getContentBias()Ljavafx/geometry/Orientation;

    move-result-object v26

    sget-object v27, Ljavafx/geometry/Orientation;->VERTICAL:Ljavafx/geometry/Orientation;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_0

    .line 1650
    move-object/from16 v26, v7

    if-eqz v26, :cond_3

    move-object/from16 v26, v7

    invoke-virtual/range {v26 .. v26}, Ljavafx/geometry/Insets;->getTop()D

    move-result-wide v26

    move/from16 v28, v11

    invoke-static/range {v26 .. v28}, Ljavafx/scene/layout/Region;->snapSpace(DZ)D

    move-result-wide v26

    :goto_2
    move-wide/from16 v18, v26

    .line 1651
    .local v18, "top":D
    move-object/from16 v26, v7

    if-eqz v26, :cond_4

    move-object/from16 v26, v7

    invoke-virtual/range {v26 .. v26}, Ljavafx/geometry/Insets;->getBottom()D

    move-result-wide v26

    move/from16 v28, v11

    invoke-static/range {v26 .. v28}, Ljavafx/scene/layout/Region;->snapSpace(DZ)D

    move-result-wide v26

    :goto_3
    move-wide/from16 v20, v26

    .line 1652
    .local v20, "bottom":D
    move-object/from16 v26, v4

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/Node;->getBaselineOffset()D

    move-result-wide v26

    move-wide/from16 v22, v26

    .line 1653
    .local v22, "bo":D
    move-wide/from16 v26, v22

    const-wide/high16 v28, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v26, v26, v28

    if-nez v26, :cond_5

    move-wide/from16 v26, v5

    const-wide/high16 v28, -0x4010000000000000L    # -1.0

    cmpl-double v26, v26, v28

    if-eqz v26, :cond_5

    move-wide/from16 v26, v8

    move-wide/from16 v28, v18

    sub-double v26, v26, v28

    move-wide/from16 v28, v20

    sub-double v26, v26, v28

    move-wide/from16 v28, v5

    sub-double v26, v26, v28

    :goto_4
    move-wide/from16 v24, v26

    .line 1656
    .local v24, "contentHeight":D
    move/from16 v26, v10

    if-eqz v26, :cond_6

    .line 1657
    move-object/from16 v26, v3

    move-object/from16 v27, v4

    const-wide/high16 v28, -0x4010000000000000L    # -1.0

    .line 1658
    invoke-virtual/range {v27 .. v29}, Ljavafx/scene/Node;->minHeight(D)D

    move-result-wide v27

    move-wide/from16 v29, v24

    move-object/from16 v31, v4

    const-wide/high16 v32, -0x4010000000000000L    # -1.0

    .line 1659
    invoke-virtual/range {v31 .. v33}, Ljavafx/scene/Node;->maxHeight(D)D

    move-result-wide v31

    .line 1657
    invoke-static/range {v27 .. v32}, Ljavafx/scene/layout/Region;->boundedSize(DDD)D

    move-result-wide v27

    invoke-virtual/range {v26 .. v28}, Ljavafx/scene/layout/Region;->snapSize(D)D

    move-result-wide v26

    move-wide/from16 v16, v26

    .line 1667
    .end local v18    # "top":D
    .end local v20    # "bottom":D
    .end local v22    # "bo":D
    .end local v24    # "contentHeight":D
    :cond_0
    :goto_5
    move-wide/from16 v26, v12

    move-object/from16 v28, v3

    move-object/from16 v29, v4

    move-wide/from16 v30, v16

    invoke-virtual/range {v29 .. v31}, Ljavafx/scene/Node;->minWidth(D)D

    move-result-wide v29

    invoke-virtual/range {v28 .. v30}, Ljavafx/scene/layout/Region;->snapSize(D)D

    move-result-wide v28

    add-double v26, v26, v28

    move-wide/from16 v28, v14

    add-double v26, v26, v28

    move-wide/from16 v3, v26

    .end local v3    # "this":Ljavafx/scene/layout/Region;
    return-wide v3

    .line 1646
    .end local v12    # "left":D
    .end local v14    # "right":D
    .end local v16    # "alt":D
    .restart local v3    # "this":Ljavafx/scene/layout/Region;
    :cond_1
    const-wide/16 v26, 0x0

    goto/16 :goto_0

    .line 1647
    .restart local v12    # "left":D
    :cond_2
    const-wide/16 v26, 0x0

    goto/16 :goto_1

    .line 1650
    .restart local v14    # "right":D
    .restart local v16    # "alt":D
    :cond_3
    const-wide/16 v26, 0x0

    goto/16 :goto_2

    .line 1651
    .restart local v18    # "top":D
    :cond_4
    const-wide/16 v26, 0x0

    goto :goto_3

    .line 1653
    .restart local v20    # "bottom":D
    .restart local v22    # "bo":D
    :cond_5
    move-wide/from16 v26, v8

    move-wide/from16 v28, v18

    sub-double v26, v26, v28

    move-wide/from16 v28, v20

    sub-double v26, v26, v28

    goto :goto_4

    .line 1661
    .restart local v24    # "contentHeight":D
    :cond_6
    move-object/from16 v26, v3

    move-object/from16 v27, v4

    const-wide/high16 v28, -0x4010000000000000L    # -1.0

    .line 1662
    invoke-virtual/range {v27 .. v29}, Ljavafx/scene/Node;->minHeight(D)D

    move-result-wide v27

    move-object/from16 v29, v4

    const-wide/high16 v30, -0x4010000000000000L    # -1.0

    .line 1663
    invoke-virtual/range {v29 .. v31}, Ljavafx/scene/Node;->prefHeight(D)D

    move-result-wide v29

    move-object/from16 v31, v4

    const-wide/high16 v32, -0x4010000000000000L    # -1.0

    .line 1664
    invoke-virtual/range {v31 .. v33}, Ljavafx/scene/Node;->maxHeight(D)D

    move-result-wide v31

    move-wide/from16 v33, v24

    invoke-static/range {v31 .. v34}, Ljava/lang/Math;->min(DD)D

    move-result-wide v31

    .line 1661
    invoke-static/range {v27 .. v32}, Ljavafx/scene/layout/Region;->boundedSize(DDD)D

    move-result-wide v27

    invoke-virtual/range {v26 .. v28}, Ljavafx/scene/layout/Region;->snapSize(D)D

    move-result-wide v26

    move-wide/from16 v16, v26

    goto :goto_5
.end method

.method computeChildMinAreaWidth(Ljavafx/scene/Node;Ljavafx/geometry/Insets;)D
    .locals 11

    .prologue
    .line 1641
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Region;
    move-object v1, p1

    .local v1, "child":Ljavafx/scene/Node;
    move-object v2, p2

    .local v2, "margin":Ljavafx/geometry/Insets;
    move-object v3, v0

    move-object v4, v1

    const-wide/high16 v5, -0x4010000000000000L    # -1.0

    move-object v7, v2

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Ljavafx/scene/layout/Region;->computeChildMinAreaWidth(Ljavafx/scene/Node;DLjavafx/geometry/Insets;DZ)D

    move-result-wide v3

    move-wide v0, v3

    .end local v0    # "this":Ljavafx/scene/layout/Region;
    return-wide v0
.end method

.method computeChildPrefAreaHeight(Ljavafx/scene/Node;DLjavafx/geometry/Insets;D)D
    .locals 30

    .prologue
    .line 1736
    move-object/from16 v2, p0

    .local v2, "this":Ljavafx/scene/layout/Region;
    move-object/from16 v3, p1

    .local v3, "child":Ljavafx/scene/Node;
    move-wide/from16 v4, p2

    .local v4, "prefBaselineComplement":D
    move-object/from16 v6, p4

    .local v6, "margin":Ljavafx/geometry/Insets;
    move-wide/from16 v7, p5

    .local v7, "width":D
    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/layout/Region;->isSnapToPixel()Z

    move-result v20

    move/from16 v9, v20

    .line 1737
    .local v9, "snap":Z
    move-object/from16 v20, v6

    if-eqz v20, :cond_1

    move-object/from16 v20, v6

    invoke-virtual/range {v20 .. v20}, Ljavafx/geometry/Insets;->getTop()D

    move-result-wide v20

    move/from16 v22, v9

    invoke-static/range {v20 .. v22}, Ljavafx/scene/layout/Region;->snapSpace(DZ)D

    move-result-wide v20

    :goto_0
    move-wide/from16 v10, v20

    .line 1738
    .local v10, "top":D
    move-object/from16 v20, v6

    if-eqz v20, :cond_2

    move-object/from16 v20, v6

    invoke-virtual/range {v20 .. v20}, Ljavafx/geometry/Insets;->getBottom()D

    move-result-wide v20

    move/from16 v22, v9

    invoke-static/range {v20 .. v22}, Ljavafx/scene/layout/Region;->snapSpace(DZ)D

    move-result-wide v20

    :goto_1
    move-wide/from16 v12, v20

    .line 1740
    .local v12, "bottom":D
    const-wide/high16 v20, -0x4010000000000000L    # -1.0

    move-wide/from16 v14, v20

    .line 1741
    .local v14, "alt":D
    move-object/from16 v20, v3

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/Node;->isResizable()Z

    move-result v20

    if-eqz v20, :cond_0

    move-object/from16 v20, v3

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/Node;->getContentBias()Ljavafx/geometry/Orientation;

    move-result-object v20

    sget-object v21, Ljavafx/geometry/Orientation;->HORIZONTAL:Ljavafx/geometry/Orientation;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_0

    .line 1742
    move-object/from16 v20, v6

    if-eqz v20, :cond_3

    move-object/from16 v20, v6

    invoke-virtual/range {v20 .. v20}, Ljavafx/geometry/Insets;->getLeft()D

    move-result-wide v20

    move/from16 v22, v9

    invoke-static/range {v20 .. v22}, Ljavafx/scene/layout/Region;->snapSpace(DZ)D

    move-result-wide v20

    :goto_2
    move-wide/from16 v16, v20

    .line 1743
    .local v16, "left":D
    move-object/from16 v20, v6

    if-eqz v20, :cond_4

    move-object/from16 v20, v6

    invoke-virtual/range {v20 .. v20}, Ljavafx/geometry/Insets;->getRight()D

    move-result-wide v20

    move/from16 v22, v9

    invoke-static/range {v20 .. v22}, Ljavafx/scene/layout/Region;->snapSpace(DZ)D

    move-result-wide v20

    :goto_3
    move-wide/from16 v18, v20

    .line 1744
    .local v18, "right":D
    move-object/from16 v20, v2

    move-object/from16 v21, v3

    const-wide/high16 v22, -0x4010000000000000L    # -1.0

    .line 1745
    invoke-virtual/range {v21 .. v23}, Ljavafx/scene/Node;->minWidth(D)D

    move-result-wide v21

    move-wide/from16 v23, v7

    const-wide/high16 v25, -0x4010000000000000L    # -1.0

    cmpl-double v23, v23, v25

    if-eqz v23, :cond_5

    move-wide/from16 v23, v7

    move-wide/from16 v25, v16

    sub-double v23, v23, v25

    move-wide/from16 v25, v18

    sub-double v23, v23, v25

    .line 1746
    :goto_4
    move-object/from16 v25, v3

    const-wide/high16 v26, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v25 .. v27}, Ljavafx/scene/Node;->maxWidth(D)D

    move-result-wide v25

    .line 1744
    invoke-static/range {v21 .. v26}, Ljavafx/scene/layout/Region;->boundedSize(DDD)D

    move-result-wide v21

    invoke-virtual/range {v20 .. v22}, Ljavafx/scene/layout/Region;->snapSize(D)D

    move-result-wide v20

    move-wide/from16 v14, v20

    .line 1749
    .end local v16    # "left":D
    .end local v18    # "right":D
    :cond_0
    move-wide/from16 v20, v4

    const-wide/high16 v22, -0x4010000000000000L    # -1.0

    cmpl-double v20, v20, v22

    if-eqz v20, :cond_7

    .line 1750
    move-object/from16 v20, v3

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/Node;->getBaselineOffset()D

    move-result-wide v20

    move-wide/from16 v16, v20

    .line 1751
    .local v16, "baseline":D
    move-object/from16 v20, v3

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/Node;->isResizable()Z

    move-result v20

    if-eqz v20, :cond_6

    move-wide/from16 v20, v16

    const-wide/high16 v22, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v20, v20, v22

    if-nez v20, :cond_6

    .line 1754
    move-wide/from16 v20, v10

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-wide/from16 v24, v14

    invoke-virtual/range {v23 .. v25}, Ljavafx/scene/Node;->minHeight(D)D

    move-result-wide v23

    move-object/from16 v25, v3

    move-wide/from16 v26, v14

    invoke-virtual/range {v25 .. v27}, Ljavafx/scene/Node;->prefHeight(D)D

    move-result-wide v25

    move-object/from16 v27, v3

    move-wide/from16 v28, v14

    invoke-virtual/range {v27 .. v29}, Ljavafx/scene/Node;->maxHeight(D)D

    move-result-wide v27

    invoke-static/range {v23 .. v28}, Ljavafx/scene/layout/Region;->boundedSize(DDD)D

    move-result-wide v23

    invoke-virtual/range {v22 .. v24}, Ljavafx/scene/layout/Region;->snapSize(D)D

    move-result-wide v22

    add-double v20, v20, v22

    move-wide/from16 v22, v12

    add-double v20, v20, v22

    move-wide/from16 v22, v4

    add-double v20, v20, v22

    move-wide/from16 v2, v20

    .line 1762
    .end local v2    # "this":Ljavafx/scene/layout/Region;
    .end local v16    # "baseline":D
    :goto_5
    return-wide v2

    .line 1737
    .end local v10    # "top":D
    .end local v12    # "bottom":D
    .end local v14    # "alt":D
    .restart local v2    # "this":Ljavafx/scene/layout/Region;
    :cond_1
    const-wide/16 v20, 0x0

    goto/16 :goto_0

    .line 1738
    .restart local v10    # "top":D
    :cond_2
    const-wide/16 v20, 0x0

    goto/16 :goto_1

    .line 1742
    .restart local v12    # "bottom":D
    .restart local v14    # "alt":D
    :cond_3
    const-wide/16 v20, 0x0

    goto/16 :goto_2

    .line 1743
    .local v16, "left":D
    :cond_4
    const-wide/16 v20, 0x0

    goto/16 :goto_3

    .line 1745
    .restart local v18    # "right":D
    :cond_5
    move-object/from16 v23, v3

    const-wide/high16 v24, -0x4010000000000000L    # -1.0

    .line 1746
    invoke-virtual/range {v23 .. v25}, Ljavafx/scene/Node;->prefWidth(D)D

    move-result-wide v23

    goto :goto_4

    .line 1759
    .end local v18    # "right":D
    .local v16, "baseline":D
    :cond_6
    move-wide/from16 v20, v10

    move-wide/from16 v22, v16

    add-double v20, v20, v22

    move-wide/from16 v22, v4

    add-double v20, v20, v22

    move-wide/from16 v22, v12

    add-double v20, v20, v22

    move-wide/from16 v2, v20

    goto :goto_5

    .line 1762
    .end local v16    # "baseline":D
    :cond_7
    move-wide/from16 v20, v10

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-wide/from16 v24, v14

    invoke-virtual/range {v23 .. v25}, Ljavafx/scene/Node;->minHeight(D)D

    move-result-wide v23

    move-object/from16 v25, v3

    move-wide/from16 v26, v14

    invoke-virtual/range {v25 .. v27}, Ljavafx/scene/Node;->prefHeight(D)D

    move-result-wide v25

    move-object/from16 v27, v3

    move-wide/from16 v28, v14

    invoke-virtual/range {v27 .. v29}, Ljavafx/scene/Node;->maxHeight(D)D

    move-result-wide v27

    invoke-static/range {v23 .. v28}, Ljavafx/scene/layout/Region;->boundedSize(DDD)D

    move-result-wide v23

    invoke-virtual/range {v22 .. v24}, Ljavafx/scene/layout/Region;->snapSize(D)D

    move-result-wide v22

    add-double v20, v20, v22

    move-wide/from16 v22, v12

    add-double v20, v20, v22

    move-wide/from16 v2, v20

    goto :goto_5
.end method

.method computeChildPrefAreaHeight(Ljavafx/scene/Node;Ljavafx/geometry/Insets;)D
    .locals 10

    .prologue
    .line 1732
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Region;
    move-object v1, p1

    .local v1, "child":Ljavafx/scene/Node;
    move-object v2, p2

    .local v2, "margin":Ljavafx/geometry/Insets;
    move-object v3, v0

    move-object v4, v1

    const-wide/high16 v5, -0x4010000000000000L    # -1.0

    move-object v7, v2

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v3 .. v9}, Ljavafx/scene/layout/Region;->computeChildPrefAreaHeight(Ljavafx/scene/Node;DLjavafx/geometry/Insets;D)D

    move-result-wide v3

    move-wide v0, v3

    .end local v0    # "this":Ljavafx/scene/layout/Region;
    return-wide v0
.end method

.method computeChildPrefAreaWidth(Ljavafx/scene/Node;DLjavafx/geometry/Insets;DZ)D
    .locals 36

    .prologue
    .line 1706
    move-object/from16 v3, p0

    .local v3, "this":Ljavafx/scene/layout/Region;
    move-object/from16 v4, p1

    .local v4, "child":Ljavafx/scene/Node;
    move-wide/from16 v5, p2

    .local v5, "baselineComplement":D
    move-object/from16 v7, p4

    .local v7, "margin":Ljavafx/geometry/Insets;
    move-wide/from16 v8, p5

    .local v8, "height":D
    move/from16 v10, p7

    .local v10, "fillHeight":Z
    move-object/from16 v26, v3

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/layout/Region;->isSnapToPixel()Z

    move-result v26

    move/from16 v11, v26

    .line 1707
    .local v11, "snap":Z
    move-object/from16 v26, v7

    if-eqz v26, :cond_1

    move-object/from16 v26, v7

    invoke-virtual/range {v26 .. v26}, Ljavafx/geometry/Insets;->getLeft()D

    move-result-wide v26

    move/from16 v28, v11

    invoke-static/range {v26 .. v28}, Ljavafx/scene/layout/Region;->snapSpace(DZ)D

    move-result-wide v26

    :goto_0
    move-wide/from16 v12, v26

    .line 1708
    .local v12, "left":D
    move-object/from16 v26, v7

    if-eqz v26, :cond_2

    move-object/from16 v26, v7

    invoke-virtual/range {v26 .. v26}, Ljavafx/geometry/Insets;->getRight()D

    move-result-wide v26

    move/from16 v28, v11

    invoke-static/range {v26 .. v28}, Ljavafx/scene/layout/Region;->snapSpace(DZ)D

    move-result-wide v26

    :goto_1
    move-wide/from16 v14, v26

    .line 1709
    .local v14, "right":D
    const-wide/high16 v26, -0x4010000000000000L    # -1.0

    move-wide/from16 v16, v26

    .line 1710
    .local v16, "alt":D
    move-wide/from16 v26, v8

    const-wide/high16 v28, -0x4010000000000000L    # -1.0

    cmpl-double v26, v26, v28

    if-eqz v26, :cond_0

    move-object/from16 v26, v4

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/Node;->isResizable()Z

    move-result v26

    if-eqz v26, :cond_0

    move-object/from16 v26, v4

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/Node;->getContentBias()Ljavafx/geometry/Orientation;

    move-result-object v26

    sget-object v27, Ljavafx/geometry/Orientation;->VERTICAL:Ljavafx/geometry/Orientation;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_0

    .line 1711
    move-object/from16 v26, v7

    if-eqz v26, :cond_3

    move-object/from16 v26, v7

    invoke-virtual/range {v26 .. v26}, Ljavafx/geometry/Insets;->getTop()D

    move-result-wide v26

    move/from16 v28, v11

    invoke-static/range {v26 .. v28}, Ljavafx/scene/layout/Region;->snapSpace(DZ)D

    move-result-wide v26

    :goto_2
    move-wide/from16 v18, v26

    .line 1712
    .local v18, "top":D
    move-object/from16 v26, v7

    if-eqz v26, :cond_4

    move-object/from16 v26, v7

    invoke-virtual/range {v26 .. v26}, Ljavafx/geometry/Insets;->getBottom()D

    move-result-wide v26

    move/from16 v28, v11

    invoke-static/range {v26 .. v28}, Ljavafx/scene/layout/Region;->snapSpace(DZ)D

    move-result-wide v26

    :goto_3
    move-wide/from16 v20, v26

    .line 1713
    .local v20, "bottom":D
    move-object/from16 v26, v4

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/Node;->getBaselineOffset()D

    move-result-wide v26

    move-wide/from16 v22, v26

    .line 1714
    .local v22, "bo":D
    move-wide/from16 v26, v22

    const-wide/high16 v28, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v26, v26, v28

    if-nez v26, :cond_5

    move-wide/from16 v26, v5

    const-wide/high16 v28, -0x4010000000000000L    # -1.0

    cmpl-double v26, v26, v28

    if-eqz v26, :cond_5

    move-wide/from16 v26, v8

    move-wide/from16 v28, v18

    sub-double v26, v26, v28

    move-wide/from16 v28, v20

    sub-double v26, v26, v28

    move-wide/from16 v28, v5

    sub-double v26, v26, v28

    :goto_4
    move-wide/from16 v24, v26

    .line 1717
    .local v24, "contentHeight":D
    move/from16 v26, v10

    if-eqz v26, :cond_6

    .line 1718
    move-object/from16 v26, v3

    move-object/from16 v27, v4

    const-wide/high16 v28, -0x4010000000000000L    # -1.0

    .line 1719
    invoke-virtual/range {v27 .. v29}, Ljavafx/scene/Node;->minHeight(D)D

    move-result-wide v27

    move-wide/from16 v29, v24

    move-object/from16 v31, v4

    const-wide/high16 v32, -0x4010000000000000L    # -1.0

    .line 1720
    invoke-virtual/range {v31 .. v33}, Ljavafx/scene/Node;->maxHeight(D)D

    move-result-wide v31

    .line 1718
    invoke-static/range {v27 .. v32}, Ljavafx/scene/layout/Region;->boundedSize(DDD)D

    move-result-wide v27

    invoke-virtual/range {v26 .. v28}, Ljavafx/scene/layout/Region;->snapSize(D)D

    move-result-wide v26

    move-wide/from16 v16, v26

    .line 1728
    .end local v18    # "top":D
    .end local v20    # "bottom":D
    .end local v22    # "bo":D
    .end local v24    # "contentHeight":D
    :cond_0
    :goto_5
    move-wide/from16 v26, v12

    move-object/from16 v28, v3

    move-object/from16 v29, v4

    move-wide/from16 v30, v16

    invoke-virtual/range {v29 .. v31}, Ljavafx/scene/Node;->minWidth(D)D

    move-result-wide v29

    move-object/from16 v31, v4

    move-wide/from16 v32, v16

    invoke-virtual/range {v31 .. v33}, Ljavafx/scene/Node;->prefWidth(D)D

    move-result-wide v31

    move-object/from16 v33, v4

    move-wide/from16 v34, v16

    invoke-virtual/range {v33 .. v35}, Ljavafx/scene/Node;->maxWidth(D)D

    move-result-wide v33

    invoke-static/range {v29 .. v34}, Ljavafx/scene/layout/Region;->boundedSize(DDD)D

    move-result-wide v29

    invoke-virtual/range {v28 .. v30}, Ljavafx/scene/layout/Region;->snapSize(D)D

    move-result-wide v28

    add-double v26, v26, v28

    move-wide/from16 v28, v14

    add-double v26, v26, v28

    move-wide/from16 v3, v26

    .end local v3    # "this":Ljavafx/scene/layout/Region;
    return-wide v3

    .line 1707
    .end local v12    # "left":D
    .end local v14    # "right":D
    .end local v16    # "alt":D
    .restart local v3    # "this":Ljavafx/scene/layout/Region;
    :cond_1
    const-wide/16 v26, 0x0

    goto/16 :goto_0

    .line 1708
    .restart local v12    # "left":D
    :cond_2
    const-wide/16 v26, 0x0

    goto/16 :goto_1

    .line 1711
    .restart local v14    # "right":D
    .restart local v16    # "alt":D
    :cond_3
    const-wide/16 v26, 0x0

    goto/16 :goto_2

    .line 1712
    .restart local v18    # "top":D
    :cond_4
    const-wide/16 v26, 0x0

    goto/16 :goto_3

    .line 1714
    .restart local v20    # "bottom":D
    .restart local v22    # "bo":D
    :cond_5
    move-wide/from16 v26, v8

    move-wide/from16 v28, v18

    sub-double v26, v26, v28

    move-wide/from16 v28, v20

    sub-double v26, v26, v28

    goto :goto_4

    .line 1722
    .restart local v24    # "contentHeight":D
    :cond_6
    move-object/from16 v26, v3

    move-object/from16 v27, v4

    const-wide/high16 v28, -0x4010000000000000L    # -1.0

    .line 1723
    invoke-virtual/range {v27 .. v29}, Ljavafx/scene/Node;->minHeight(D)D

    move-result-wide v27

    move-object/from16 v29, v4

    const-wide/high16 v30, -0x4010000000000000L    # -1.0

    .line 1724
    invoke-virtual/range {v29 .. v31}, Ljavafx/scene/Node;->prefHeight(D)D

    move-result-wide v29

    move-object/from16 v31, v4

    const-wide/high16 v32, -0x4010000000000000L    # -1.0

    .line 1725
    invoke-virtual/range {v31 .. v33}, Ljavafx/scene/Node;->maxHeight(D)D

    move-result-wide v31

    move-wide/from16 v33, v24

    invoke-static/range {v31 .. v34}, Ljava/lang/Math;->min(DD)D

    move-result-wide v31

    .line 1722
    invoke-static/range {v27 .. v32}, Ljavafx/scene/layout/Region;->boundedSize(DDD)D

    move-result-wide v27

    invoke-virtual/range {v26 .. v28}, Ljavafx/scene/layout/Region;->snapSize(D)D

    move-result-wide v26

    move-wide/from16 v16, v26

    goto :goto_5
.end method

.method computeChildPrefAreaWidth(Ljavafx/scene/Node;Ljavafx/geometry/Insets;)D
    .locals 11

    .prologue
    .line 1702
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Region;
    move-object v1, p1

    .local v1, "child":Ljavafx/scene/Node;
    move-object v2, p2

    .local v2, "margin":Ljavafx/geometry/Insets;
    move-object v3, v0

    move-object v4, v1

    const-wide/high16 v5, -0x4010000000000000L    # -1.0

    move-object v7, v2

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Ljavafx/scene/layout/Region;->computeChildPrefAreaWidth(Ljavafx/scene/Node;DLjavafx/geometry/Insets;DZ)D

    move-result-wide v3

    move-wide v0, v3

    .end local v0    # "this":Ljavafx/scene/layout/Region;
    return-wide v0
.end method

.method protected computeMaxHeight(D)D
    .locals 7

    .prologue
    .line 1557
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/layout/Region;
    move-wide v2, p1

    .local v2, "width":D
    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    move-wide v1, v4

    .end local v1    # "this":Ljavafx/scene/layout/Region;
    return-wide v1
.end method

.method computeMaxMinAreaHeight(Ljava/util/List;Ljavafx/util/Callback;Ljavafx/geometry/VPos;)D
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljavafx/scene/Node;",
            ">;",
            "Ljavafx/util/Callback",
            "<",
            "Ljavafx/scene/Node;",
            "Ljavafx/geometry/Insets;",
            ">;",
            "Ljavafx/geometry/VPos;",
            ")D"
        }
    .end annotation

    .prologue
    .line 1847
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Region;
    move-object v1, p1

    .local v1, "children":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    move-object v2, p2

    .local v2, "margins":Ljavafx/util/Callback;, "Ljavafx/util/Callback<Ljavafx/scene/Node;Ljavafx/geometry/Insets;>;"
    move-object v3, p3

    .local v3, "valignment":Ljavafx/geometry/VPos;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    const/4 v7, 0x0

    move-object v8, v3

    const/4 v9, 0x1

    invoke-direct/range {v4 .. v9}, Ljavafx/scene/layout/Region;->getMaxAreaHeight(Ljava/util/List;Ljavafx/util/Callback;[DLjavafx/geometry/VPos;Z)D

    move-result-wide v4

    move-wide v0, v4

    .end local v0    # "this":Ljavafx/scene/layout/Region;
    return-wide v0
.end method

.method computeMaxMinAreaHeight(Ljava/util/List;Ljavafx/util/Callback;Ljavafx/geometry/VPos;D)D
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljavafx/scene/Node;",
            ">;",
            "Ljavafx/util/Callback",
            "<",
            "Ljavafx/scene/Node;",
            "Ljavafx/geometry/Insets;",
            ">;",
            "Ljavafx/geometry/VPos;",
            "D)D"
        }
    .end annotation

    .prologue
    .line 1851
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/layout/Region;
    move-object/from16 v1, p1

    .local v1, "children":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    move-object/from16 v2, p2

    .local v2, "margins":Ljavafx/util/Callback;, "Ljavafx/util/Callback<Ljavafx/scene/Node;Ljavafx/geometry/Insets;>;"
    move-object/from16 v3, p3

    .local v3, "valignment":Ljavafx/geometry/VPos;
    move-wide/from16 v4, p4

    .local v4, "width":D
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    const/4 v9, 0x1

    new-array v9, v9, [D

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    const/4 v11, 0x0

    move-wide v12, v4

    aput-wide v12, v10, v11

    move-object v10, v3

    const/4 v11, 0x1

    invoke-direct/range {v6 .. v11}, Ljavafx/scene/layout/Region;->getMaxAreaHeight(Ljava/util/List;Ljavafx/util/Callback;[DLjavafx/geometry/VPos;Z)D

    move-result-wide v6

    move-wide v0, v6

    .end local v0    # "this":Ljavafx/scene/layout/Region;
    return-wide v0
.end method

.method computeMaxMinAreaHeight(Ljava/util/List;Ljavafx/util/Callback;[DLjavafx/geometry/VPos;)D
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljavafx/scene/Node;",
            ">;",
            "Ljavafx/util/Callback",
            "<",
            "Ljavafx/scene/Node;",
            "Ljavafx/geometry/Insets;",
            ">;[D",
            "Ljavafx/geometry/VPos;",
            ")D"
        }
    .end annotation

    .prologue
    .line 1855
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Region;
    move-object v1, p1

    .local v1, "children":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    move-object v2, p2

    .local v2, "childMargins":Ljavafx/util/Callback;, "Ljavafx/util/Callback<Ljavafx/scene/Node;Ljavafx/geometry/Insets;>;"
    move-object v3, p3

    .local v3, "childWidths":[D
    move-object v4, p4

    .local v4, "valignment":Ljavafx/geometry/VPos;
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    const/4 v10, 0x1

    invoke-direct/range {v5 .. v10}, Ljavafx/scene/layout/Region;->getMaxAreaHeight(Ljava/util/List;Ljavafx/util/Callback;[DLjavafx/geometry/VPos;Z)D

    move-result-wide v5

    move-wide v0, v5

    .end local v0    # "this":Ljavafx/scene/layout/Region;
    return-wide v0
.end method

.method computeMaxMinAreaWidth(Ljava/util/List;Ljavafx/util/Callback;)D
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljavafx/scene/Node;",
            ">;",
            "Ljavafx/util/Callback",
            "<",
            "Ljavafx/scene/Node;",
            "Ljavafx/geometry/Insets;",
            ">;)D"
        }
    .end annotation

    .prologue
    .line 1833
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/layout/Region;
    move-object v2, p1

    .local v2, "children":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    move-object v3, p2

    .local v3, "margins":Ljavafx/util/Callback;, "Ljavafx/util/Callback<Ljavafx/scene/Node;Ljavafx/geometry/Insets;>;"
    move-object v4, v1

    move-object v5, v2

    move-object v6, v3

    const/4 v7, 0x1

    new-array v7, v7, [D

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const/4 v9, 0x0

    const-wide/high16 v10, -0x4010000000000000L    # -1.0

    aput-wide v10, v8, v9

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-direct/range {v4 .. v9}, Ljavafx/scene/layout/Region;->getMaxAreaWidth(Ljava/util/List;Ljavafx/util/Callback;[DZZ)D

    move-result-wide v4

    move-wide v1, v4

    .end local v1    # "this":Ljavafx/scene/layout/Region;
    return-wide v1
.end method

.method computeMaxMinAreaWidth(Ljava/util/List;Ljavafx/util/Callback;DZ)D
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljavafx/scene/Node;",
            ">;",
            "Ljavafx/util/Callback",
            "<",
            "Ljavafx/scene/Node;",
            "Ljavafx/geometry/Insets;",
            ">;DZ)D"
        }
    .end annotation

    .prologue
    .line 1837
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Region;
    move-object/from16 v1, p1

    .local v1, "children":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    move-object/from16 v2, p2

    .local v2, "margins":Ljavafx/util/Callback;, "Ljavafx/util/Callback<Ljavafx/scene/Node;Ljavafx/geometry/Insets;>;"
    move-wide/from16 v3, p3

    .local v3, "height":D
    move/from16 v5, p5

    .local v5, "fillHeight":Z
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    const/4 v9, 0x1

    new-array v9, v9, [D

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    const/4 v11, 0x0

    move-wide v12, v3

    aput-wide v12, v10, v11

    move v10, v5

    const/4 v11, 0x1

    invoke-direct/range {v6 .. v11}, Ljavafx/scene/layout/Region;->getMaxAreaWidth(Ljava/util/List;Ljavafx/util/Callback;[DZZ)D

    move-result-wide v6

    move-wide v0, v6

    .end local v0    # "this":Ljavafx/scene/layout/Region;
    return-wide v0
.end method

.method computeMaxMinAreaWidth(Ljava/util/List;Ljavafx/util/Callback;[DZ)D
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljavafx/scene/Node;",
            ">;",
            "Ljavafx/util/Callback",
            "<",
            "Ljavafx/scene/Node;",
            "Ljavafx/geometry/Insets;",
            ">;[DZ)D"
        }
    .end annotation

    .prologue
    .line 1841
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Region;
    move-object v1, p1

    .local v1, "children":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    move-object v2, p2

    .local v2, "childMargins":Ljavafx/util/Callback;, "Ljavafx/util/Callback<Ljavafx/scene/Node;Ljavafx/geometry/Insets;>;"
    move-object v3, p3

    .local v3, "childHeights":[D
    move v4, p4

    .local v4, "fillHeight":Z
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move v9, v4

    const/4 v10, 0x1

    invoke-direct/range {v5 .. v10}, Ljavafx/scene/layout/Region;->getMaxAreaWidth(Ljava/util/List;Ljavafx/util/Callback;[DZZ)D

    move-result-wide v5

    move-wide v0, v5

    .end local v0    # "this":Ljavafx/scene/layout/Region;
    return-wide v0
.end method

.method computeMaxPrefAreaHeight(Ljava/util/List;Ljavafx/util/Callback;DLjavafx/geometry/VPos;)D
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljavafx/scene/Node;",
            ">;",
            "Ljavafx/util/Callback",
            "<",
            "Ljavafx/scene/Node;",
            "Ljavafx/geometry/Insets;",
            ">;D",
            "Ljavafx/geometry/VPos;",
            ")D"
        }
    .end annotation

    .prologue
    .line 1881
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Region;
    move-object/from16 v1, p1

    .local v1, "children":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    move-object/from16 v2, p2

    .local v2, "margins":Ljavafx/util/Callback;, "Ljavafx/util/Callback<Ljavafx/scene/Node;Ljavafx/geometry/Insets;>;"
    move-wide/from16 v3, p3

    .local v3, "width":D
    move-object/from16 v5, p5

    .local v5, "valignment":Ljavafx/geometry/VPos;
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    const/4 v9, 0x1

    new-array v9, v9, [D

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    const/4 v11, 0x0

    move-wide v12, v3

    aput-wide v12, v10, v11

    move-object v10, v5

    const/4 v11, 0x0

    invoke-direct/range {v6 .. v11}, Ljavafx/scene/layout/Region;->getMaxAreaHeight(Ljava/util/List;Ljavafx/util/Callback;[DLjavafx/geometry/VPos;Z)D

    move-result-wide v6

    move-wide v0, v6

    .end local v0    # "this":Ljavafx/scene/layout/Region;
    return-wide v0
.end method

.method computeMaxPrefAreaHeight(Ljava/util/List;Ljavafx/util/Callback;Ljavafx/geometry/VPos;)D
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljavafx/scene/Node;",
            ">;",
            "Ljavafx/util/Callback",
            "<",
            "Ljavafx/scene/Node;",
            "Ljavafx/geometry/Insets;",
            ">;",
            "Ljavafx/geometry/VPos;",
            ")D"
        }
    .end annotation

    .prologue
    .line 1877
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Region;
    move-object v1, p1

    .local v1, "children":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    move-object v2, p2

    .local v2, "margins":Ljavafx/util/Callback;, "Ljavafx/util/Callback<Ljavafx/scene/Node;Ljavafx/geometry/Insets;>;"
    move-object v3, p3

    .local v3, "valignment":Ljavafx/geometry/VPos;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    const/4 v7, 0x0

    move-object v8, v3

    const/4 v9, 0x0

    invoke-direct/range {v4 .. v9}, Ljavafx/scene/layout/Region;->getMaxAreaHeight(Ljava/util/List;Ljavafx/util/Callback;[DLjavafx/geometry/VPos;Z)D

    move-result-wide v4

    move-wide v0, v4

    .end local v0    # "this":Ljavafx/scene/layout/Region;
    return-wide v0
.end method

.method computeMaxPrefAreaHeight(Ljava/util/List;Ljavafx/util/Callback;[DLjavafx/geometry/VPos;)D
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljavafx/scene/Node;",
            ">;",
            "Ljavafx/util/Callback",
            "<",
            "Ljavafx/scene/Node;",
            "Ljavafx/geometry/Insets;",
            ">;[D",
            "Ljavafx/geometry/VPos;",
            ")D"
        }
    .end annotation

    .prologue
    .line 1885
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Region;
    move-object v1, p1

    .local v1, "children":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    move-object v2, p2

    .local v2, "childMargins":Ljavafx/util/Callback;, "Ljavafx/util/Callback<Ljavafx/scene/Node;Ljavafx/geometry/Insets;>;"
    move-object v3, p3

    .local v3, "childWidths":[D
    move-object v4, p4

    .local v4, "valignment":Ljavafx/geometry/VPos;
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    const/4 v10, 0x0

    invoke-direct/range {v5 .. v10}, Ljavafx/scene/layout/Region;->getMaxAreaHeight(Ljava/util/List;Ljavafx/util/Callback;[DLjavafx/geometry/VPos;Z)D

    move-result-wide v5

    move-wide v0, v5

    .end local v0    # "this":Ljavafx/scene/layout/Region;
    return-wide v0
.end method

.method computeMaxPrefAreaWidth(Ljava/util/List;Ljavafx/util/Callback;)D
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljavafx/scene/Node;",
            ">;",
            "Ljavafx/util/Callback",
            "<",
            "Ljavafx/scene/Node;",
            "Ljavafx/geometry/Insets;",
            ">;)D"
        }
    .end annotation

    .prologue
    .line 1861
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/layout/Region;
    move-object v2, p1

    .local v2, "children":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    move-object v3, p2

    .local v3, "margins":Ljavafx/util/Callback;, "Ljavafx/util/Callback<Ljavafx/scene/Node;Ljavafx/geometry/Insets;>;"
    move-object v4, v1

    move-object v5, v2

    move-object v6, v3

    const/4 v7, 0x1

    new-array v7, v7, [D

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const/4 v9, 0x0

    const-wide/high16 v10, -0x4010000000000000L    # -1.0

    aput-wide v10, v8, v9

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v4 .. v9}, Ljavafx/scene/layout/Region;->getMaxAreaWidth(Ljava/util/List;Ljavafx/util/Callback;[DZZ)D

    move-result-wide v4

    move-wide v1, v4

    .end local v1    # "this":Ljavafx/scene/layout/Region;
    return-wide v1
.end method

.method computeMaxPrefAreaWidth(Ljava/util/List;Ljavafx/util/Callback;DZ)D
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljavafx/scene/Node;",
            ">;",
            "Ljavafx/util/Callback",
            "<",
            "Ljavafx/scene/Node;",
            "Ljavafx/geometry/Insets;",
            ">;DZ)D"
        }
    .end annotation

    .prologue
    .line 1866
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Region;
    move-object/from16 v1, p1

    .local v1, "children":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    move-object/from16 v2, p2

    .local v2, "margins":Ljavafx/util/Callback;, "Ljavafx/util/Callback<Ljavafx/scene/Node;Ljavafx/geometry/Insets;>;"
    move-wide/from16 v3, p3

    .local v3, "height":D
    move/from16 v5, p5

    .local v5, "fillHeight":Z
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    const/4 v9, 0x1

    new-array v9, v9, [D

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    const/4 v11, 0x0

    move-wide v12, v3

    aput-wide v12, v10, v11

    move v10, v5

    const/4 v11, 0x0

    invoke-direct/range {v6 .. v11}, Ljavafx/scene/layout/Region;->getMaxAreaWidth(Ljava/util/List;Ljavafx/util/Callback;[DZZ)D

    move-result-wide v6

    move-wide v0, v6

    .end local v0    # "this":Ljavafx/scene/layout/Region;
    return-wide v0
.end method

.method computeMaxPrefAreaWidth(Ljava/util/List;Ljavafx/util/Callback;[DZ)D
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljavafx/scene/Node;",
            ">;",
            "Ljavafx/util/Callback",
            "<",
            "Ljavafx/scene/Node;",
            "Ljavafx/geometry/Insets;",
            ">;[DZ)D"
        }
    .end annotation

    .prologue
    .line 1871
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Region;
    move-object v1, p1

    .local v1, "children":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    move-object v2, p2

    .local v2, "childMargins":Ljavafx/util/Callback;, "Ljavafx/util/Callback<Ljavafx/scene/Node;Ljavafx/geometry/Insets;>;"
    move-object v3, p3

    .local v3, "childHeights":[D
    move v4, p4

    .local v4, "fillHeight":Z
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move v9, v4

    const/4 v10, 0x0

    invoke-direct/range {v5 .. v10}, Ljavafx/scene/layout/Region;->getMaxAreaWidth(Ljava/util/List;Ljavafx/util/Callback;[DZZ)D

    move-result-wide v5

    move-wide v0, v5

    .end local v0    # "this":Ljavafx/scene/layout/Region;
    return-wide v0
.end method

.method protected computeMaxWidth(D)D
    .locals 7

    .prologue
    .line 1543
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/layout/Region;
    move-wide v2, p1

    .local v2, "height":D
    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    move-wide v1, v4

    .end local v1    # "this":Ljavafx/scene/layout/Region;
    return-wide v1
.end method

.method protected computeMinHeight(D)D
    .locals 9

    .prologue
    .line 1501
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/layout/Region;
    move-wide v2, p1

    .local v2, "width":D
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/layout/Region;->getInsets()Ljavafx/geometry/Insets;

    move-result-object v4

    invoke-virtual {v4}, Ljavafx/geometry/Insets;->getTop()D

    move-result-wide v4

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/layout/Region;->getInsets()Ljavafx/geometry/Insets;

    move-result-object v6

    invoke-virtual {v6}, Ljavafx/geometry/Insets;->getBottom()D

    move-result-wide v6

    add-double/2addr v4, v6

    move-wide v1, v4

    .end local v1    # "this":Ljavafx/scene/layout/Region;
    return-wide v1
.end method

.method protected computeMinWidth(D)D
    .locals 9

    .prologue
    .line 1487
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/layout/Region;
    move-wide v2, p1

    .local v2, "height":D
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/layout/Region;->getInsets()Ljavafx/geometry/Insets;

    move-result-object v4

    invoke-virtual {v4}, Ljavafx/geometry/Insets;->getLeft()D

    move-result-wide v4

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/layout/Region;->getInsets()Ljavafx/geometry/Insets;

    move-result-object v6

    invoke-virtual {v6}, Ljavafx/geometry/Insets;->getRight()D

    move-result-wide v6

    add-double/2addr v4, v6

    move-wide v1, v4

    .end local v1    # "this":Ljavafx/scene/layout/Region;
    return-wide v1
.end method

.method protected computePrefHeight(D)D
    .locals 11

    .prologue
    .line 1528
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/layout/Region;
    move-wide v2, p1

    .local v2, "width":D
    move-object v6, v1

    move-wide v7, v2

    invoke-super {v6, v7, v8}, Ljavafx/scene/Parent;->computePrefHeight(D)D

    move-result-wide v6

    move-wide v4, v6

    .line 1529
    .local v4, "h":D
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/layout/Region;->getInsets()Ljavafx/geometry/Insets;

    move-result-object v6

    invoke-virtual {v6}, Ljavafx/geometry/Insets;->getTop()D

    move-result-wide v6

    move-wide v8, v4

    add-double/2addr v6, v8

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/layout/Region;->getInsets()Ljavafx/geometry/Insets;

    move-result-object v8

    invoke-virtual {v8}, Ljavafx/geometry/Insets;->getBottom()D

    move-result-wide v8

    add-double/2addr v6, v8

    move-wide v1, v6

    .end local v1    # "this":Ljavafx/scene/layout/Region;
    return-wide v1
.end method

.method protected computePrefWidth(D)D
    .locals 11

    .prologue
    .line 1514
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/layout/Region;
    move-wide v2, p1

    .local v2, "height":D
    move-object v6, v1

    move-wide v7, v2

    invoke-super {v6, v7, v8}, Ljavafx/scene/Parent;->computePrefWidth(D)D

    move-result-wide v6

    move-wide v4, v6

    .line 1515
    .local v4, "w":D
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/layout/Region;->getInsets()Ljavafx/geometry/Insets;

    move-result-object v6

    invoke-virtual {v6}, Ljavafx/geometry/Insets;->getLeft()D

    move-result-wide v6

    move-wide v8, v4

    add-double/2addr v6, v8

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/layout/Region;->getInsets()Ljavafx/geometry/Insets;

    move-result-object v8

    invoke-virtual {v8}, Ljavafx/geometry/Insets;->getRight()D

    move-result-wide v8

    add-double/2addr v6, v8

    move-wide v1, v6

    .end local v1    # "this":Ljavafx/scene/layout/Region;
    return-wide v1
.end method

.method getAreaBaselineOffset(Ljava/util/List;Ljavafx/util/Callback;Ljava/util/function/Function;DLjava/util/function/Function;D)D
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljavafx/scene/Node;",
            ">;",
            "Ljavafx/util/Callback",
            "<",
            "Ljavafx/scene/Node;",
            "Ljavafx/geometry/Insets;",
            ">;",
            "Ljava/util/function/Function",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Double;",
            ">;D",
            "Ljava/util/function/Function",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;D)D"
        }
    .end annotation

    .prologue
    .line 298
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/layout/Region;
    move-object/from16 v1, p1

    .local v1, "children":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    move-object/from16 v2, p2

    .local v2, "margins":Ljavafx/util/Callback;, "Ljavafx/util/Callback<Ljavafx/scene/Node;Ljavafx/geometry/Insets;>;"
    move-object/from16 v3, p3

    .local v3, "positionToWidth":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/Integer;Ljava/lang/Double;>;"
    move-wide/from16 v4, p4

    .local v4, "areaHeight":D
    move-object/from16 v6, p6

    .local v6, "fillHeight":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    move-wide/from16 v7, p7

    .local v7, "minComplement":D
    move-object v9, v1

    move-object v10, v2

    move-object v11, v3

    move-wide v12, v4

    move-object v14, v6

    move-wide v15, v7

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljavafx/scene/layout/Region;->isSnapToPixel()Z

    move-result v17

    invoke-static/range {v9 .. v17}, Ljavafx/scene/layout/Region;->getAreaBaselineOffset(Ljava/util/List;Ljavafx/util/Callback;Ljava/util/function/Function;DLjava/util/function/Function;DZ)D

    move-result-wide v9

    move-wide v0, v9

    .end local v0    # "this":Ljavafx/scene/layout/Region;
    return-wide v0
.end method

.method getAreaBaselineOffset(Ljava/util/List;Ljavafx/util/Callback;Ljava/util/function/Function;DZ)D
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljavafx/scene/Node;",
            ">;",
            "Ljavafx/util/Callback",
            "<",
            "Ljavafx/scene/Node;",
            "Ljavafx/geometry/Insets;",
            ">;",
            "Ljava/util/function/Function",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Double;",
            ">;DZ)D"
        }
    .end annotation

    .prologue
    .line 273
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Region;
    move-object v1, p1

    .local v1, "children":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    move-object/from16 v2, p2

    .local v2, "margins":Ljavafx/util/Callback;, "Ljavafx/util/Callback<Ljavafx/scene/Node;Ljavafx/geometry/Insets;>;"
    move-object/from16 v3, p3

    .local v3, "positionToWidth":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/Integer;Ljava/lang/Double;>;"
    move-wide/from16 v4, p4

    .local v4, "areaHeight":D
    move/from16 v6, p6

    .local v6, "fillHeight":Z
    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    move-wide v10, v4

    move v12, v6

    move-object v13, v0

    invoke-virtual {v13}, Ljavafx/scene/layout/Region;->isSnapToPixel()Z

    move-result v13

    invoke-static/range {v7 .. v13}, Ljavafx/scene/layout/Region;->getAreaBaselineOffset(Ljava/util/List;Ljavafx/util/Callback;Ljava/util/function/Function;DZZ)D

    move-result-wide v7

    move-wide v0, v7

    .end local v0    # "this":Ljavafx/scene/layout/Region;
    return-wide v0
.end method

.method getAreaBaselineOffset(Ljava/util/List;Ljavafx/util/Callback;Ljava/util/function/Function;DZD)D
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljavafx/scene/Node;",
            ">;",
            "Ljavafx/util/Callback",
            "<",
            "Ljavafx/scene/Node;",
            "Ljavafx/geometry/Insets;",
            ">;",
            "Ljava/util/function/Function",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Double;",
            ">;DZD)D"
        }
    .end annotation

    .prologue
    .line 286
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/layout/Region;
    move-object/from16 v1, p1

    .local v1, "children":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    move-object/from16 v2, p2

    .local v2, "margins":Ljavafx/util/Callback;, "Ljavafx/util/Callback<Ljavafx/scene/Node;Ljavafx/geometry/Insets;>;"
    move-object/from16 v3, p3

    .local v3, "positionToWidth":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/Integer;Ljava/lang/Double;>;"
    move-wide/from16 v4, p4

    .local v4, "areaHeight":D
    move/from16 v6, p6

    .local v6, "fillHeight":Z
    move-wide/from16 v7, p7

    .local v7, "minComplement":D
    move-object v9, v1

    move-object v10, v2

    move-object v11, v3

    move-wide v12, v4

    move v14, v6

    move-wide v15, v7

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljavafx/scene/layout/Region;->isSnapToPixel()Z

    move-result v17

    invoke-static/range {v9 .. v17}, Ljavafx/scene/layout/Region;->getAreaBaselineOffset(Ljava/util/List;Ljavafx/util/Callback;Ljava/util/function/Function;DZDZ)D

    move-result-wide v9

    move-wide v0, v9

    .end local v0    # "this":Ljavafx/scene/layout/Region;
    return-wide v0
.end method

.method public final getBackground()Ljavafx/scene/layout/Background;
    .locals 2

    .prologue
    .line 618
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Region;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/Region;->background:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/layout/Background;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/Region;
    return-object v0
.end method

.method public final getBorder()Ljavafx/scene/layout/Border;
    .locals 2

    .prologue
    .line 677
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Region;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/Region;->border:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/layout/Border;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/Region;
    return-object v0
.end method

.method public getCssMetaData()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljavafx/css/CssMetaData",
            "<+",
            "Ljavafx/css/Styleable;",
            "*>;>;"
        }
    .end annotation

    .prologue
    .line 3412
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Region;
    invoke-static {}, Ljavafx/scene/layout/Region;->getClassCssMetaData()Ljava/util/List;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/Region;
    return-object v0
.end method

.method public final getHeight()D
    .locals 4

    .prologue
    .line 949
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/layout/Region;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/layout/Region;->height:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    if-nez v2, :cond_0

    move-object v2, v1

    iget-wide v2, v2, Ljavafx/scene/layout/Region;->_height:D

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/layout/Region;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/layout/Region;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/layout/Region;->height:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    invoke-virtual {v2}, Ljavafx/beans/property/ReadOnlyDoubleWrapper;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getInsets()Ljavafx/geometry/Insets;
    .locals 2

    .prologue
    .line 744
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Region;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/Region;->insets:Ljavafx/scene/layout/Region$InsetsProperty;

    invoke-virtual {v1}, Ljavafx/scene/layout/Region$InsetsProperty;->get()Ljavafx/geometry/Insets;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/Region;
    return-object v0
.end method

.method public final getMaxHeight()D
    .locals 4

    .prologue
    .line 1177
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/layout/Region;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/layout/Region;->maxHeight:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    move-object v2, v1

    iget-wide v2, v2, Ljavafx/scene/layout/Region;->_maxHeight:D

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/layout/Region;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/layout/Region;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/layout/Region;->maxHeight:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getMaxWidth()D
    .locals 4

    .prologue
    .line 1148
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/layout/Region;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/layout/Region;->maxWidth:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    move-object v2, v1

    iget-wide v2, v2, Ljavafx/scene/layout/Region;->_maxWidth:D

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/layout/Region;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/layout/Region;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/layout/Region;->maxWidth:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getMinHeight()D
    .locals 4

    .prologue
    .line 1039
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/layout/Region;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/layout/Region;->minHeight:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    move-object v2, v1

    iget-wide v2, v2, Ljavafx/scene/layout/Region;->_minHeight:D

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/layout/Region;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/layout/Region;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/layout/Region;->minHeight:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getMinWidth()D
    .locals 4

    .prologue
    .line 1009
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/layout/Region;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/layout/Region;->minWidth:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    move-object v2, v1

    iget-wide v2, v2, Ljavafx/scene/layout/Region;->_minWidth:D

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/layout/Region;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/layout/Region;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/layout/Region;->minWidth:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getOpaqueInsets()Ljavafx/geometry/Insets;
    .locals 2

    .prologue
    .line 734
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Region;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/Region;->opaqueInsets:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/Region;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/layout/Region;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/Region;->opaqueInsets:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/geometry/Insets;

    goto :goto_0
.end method

.method public final getPadding()Ljavafx/geometry/Insets;
    .locals 2

    .prologue
    .line 560
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Region;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/Region;->padding:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/geometry/Insets;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/Region;
    return-object v0
.end method

.method public final getPrefHeight()D
    .locals 4

    .prologue
    .line 1104
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/layout/Region;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/layout/Region;->prefHeight:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    move-object v2, v1

    iget-wide v2, v2, Ljavafx/scene/layout/Region;->_prefHeight:D

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/layout/Region;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/layout/Region;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/layout/Region;->prefHeight:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getPrefWidth()D
    .locals 4

    .prologue
    .line 1079
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/layout/Region;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/layout/Region;->prefWidth:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    move-object v2, v1

    iget-wide v2, v2, Ljavafx/scene/layout/Region;->_prefWidth:D

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/layout/Region;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/layout/Region;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/layout/Region;->prefWidth:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getShape()Ljavafx/scene/shape/Shape;
    .locals 2

    .prologue
    .line 1212
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Region;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/Region;->shape:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/Region;->_shape:Ljavafx/scene/shape/Shape;

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/Region;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/layout/Region;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/Region;->shape:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/shape/Shape;

    goto :goto_0
.end method

.method public getUserAgentStylesheet()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3151
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Region;
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/Region;
    return-object v0
.end method

.method public final getWidth()D
    .locals 4

    .prologue
    .line 880
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/layout/Region;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/layout/Region;->width:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    if-nez v2, :cond_0

    move-object v2, v1

    iget-wide v2, v2, Ljavafx/scene/layout/Region;->_width:D

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/layout/Region;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/layout/Region;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/layout/Region;->width:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    invoke-virtual {v2}, Ljavafx/beans/property/ReadOnlyDoubleWrapper;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final heightProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;
    .locals 9

    .prologue
    .line 952
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/layout/Region;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/layout/Region;->height:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    if-nez v2, :cond_0

    .line 953
    move-object v2, v1

    new-instance v3, Ljavafx/scene/layout/Region$7;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/layout/Region;->_height:D

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/layout/Region$7;-><init>(Ljavafx/scene/layout/Region;D)V

    iput-object v3, v2, Ljavafx/scene/layout/Region;->height:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    .line 959
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/layout/Region;->height:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    invoke-virtual {v2}, Ljavafx/beans/property/ReadOnlyDoubleWrapper;->getReadOnlyProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;

    move-result-object v2

    move-object v1, v2

    .end local v1    # "this":Ljavafx/scene/layout/Region;
    return-object v1
.end method

.method protected impl_computeContains(DD)Z
    .locals 43
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2569
    move-object/from16 v3, p0

    .local v3, "this":Ljavafx/scene/layout/Region;
    move-wide/from16 v4, p1

    .local v4, "localX":D
    move-wide/from16 v6, p3

    .local v6, "localY":D
    move-object/from16 v25, v3

    invoke-virtual/range {v25 .. v25}, Ljavafx/scene/layout/Region;->getWidth()D

    move-result-wide v25

    move-wide/from16 v8, v25

    .line 2570
    .local v8, "x2":D
    move-object/from16 v25, v3

    invoke-virtual/range {v25 .. v25}, Ljavafx/scene/layout/Region;->getHeight()D

    move-result-wide v25

    move-wide/from16 v10, v25

    .line 2572
    .local v10, "y2":D
    move-object/from16 v25, v3

    invoke-virtual/range {v25 .. v25}, Ljavafx/scene/layout/Region;->getBackground()Ljavafx/scene/layout/Background;

    move-result-object v25

    move-object/from16 v12, v25

    .line 2574
    .local v12, "background":Ljavafx/scene/layout/Background;
    move-object/from16 v25, v3

    move-object/from16 v0, v25

    iget-object v0, v0, Ljavafx/scene/layout/Region;->_shape:Ljavafx/scene/shape/Shape;

    move-object/from16 v25, v0

    if-eqz v25, :cond_2

    .line 2575
    move-object/from16 v25, v12

    if-eqz v25, :cond_1

    move-object/from16 v25, v12

    invoke-virtual/range {v25 .. v25}, Ljavafx/scene/layout/Background;->getFills()Ljava/util/List;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->isEmpty()Z

    move-result v25

    if-nez v25, :cond_1

    .line 2576
    move-object/from16 v25, v12

    invoke-virtual/range {v25 .. v25}, Ljavafx/scene/layout/Background;->getFills()Ljava/util/List;

    move-result-object v25

    move-object/from16 v13, v25

    .line 2577
    .local v13, "fills":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/layout/BackgroundFill;>;"
    const-wide v25, 0x7fefffffffffffffL    # Double.MAX_VALUE

    move-wide/from16 v14, v25

    .line 2578
    .local v14, "topO":D
    const-wide v25, 0x7fefffffffffffffL    # Double.MAX_VALUE

    move-wide/from16 v16, v25

    .line 2579
    .local v16, "leftO":D
    const-wide v25, 0x7fefffffffffffffL    # Double.MAX_VALUE

    move-wide/from16 v18, v25

    .line 2580
    .local v18, "bottomO":D
    const-wide v25, 0x7fefffffffffffffL    # Double.MAX_VALUE

    move-wide/from16 v20, v25

    .line 2581
    .local v20, "rightO":D
    const/16 v25, 0x0

    move/from16 v22, v25

    .local v22, "i":I
    move-object/from16 v25, v13

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v25

    move/from16 v23, v25

    .local v23, "max":I
    :goto_0
    move/from16 v25, v22

    move/from16 v26, v23

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_0

    .line 2582
    move-object/from16 v25, v13

    const/16 v26, 0x0

    invoke-interface/range {v25 .. v26}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljavafx/scene/layout/BackgroundFill;

    move-object/from16 v24, v25

    .line 2583
    .local v24, "bf":Ljavafx/scene/layout/BackgroundFill;
    move-wide/from16 v25, v14

    move-object/from16 v27, v24

    invoke-virtual/range {v27 .. v27}, Ljavafx/scene/layout/BackgroundFill;->getInsets()Ljavafx/geometry/Insets;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljavafx/geometry/Insets;->getTop()D

    move-result-wide v27

    invoke-static/range {v25 .. v28}, Ljava/lang/Math;->min(DD)D

    move-result-wide v25

    move-wide/from16 v14, v25

    .line 2584
    move-wide/from16 v25, v16

    move-object/from16 v27, v24

    invoke-virtual/range {v27 .. v27}, Ljavafx/scene/layout/BackgroundFill;->getInsets()Ljavafx/geometry/Insets;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljavafx/geometry/Insets;->getLeft()D

    move-result-wide v27

    invoke-static/range {v25 .. v28}, Ljava/lang/Math;->min(DD)D

    move-result-wide v25

    move-wide/from16 v16, v25

    .line 2585
    move-wide/from16 v25, v18

    move-object/from16 v27, v24

    invoke-virtual/range {v27 .. v27}, Ljavafx/scene/layout/BackgroundFill;->getInsets()Ljavafx/geometry/Insets;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljavafx/geometry/Insets;->getBottom()D

    move-result-wide v27

    invoke-static/range {v25 .. v28}, Ljava/lang/Math;->min(DD)D

    move-result-wide v25

    move-wide/from16 v18, v25

    .line 2586
    move-wide/from16 v25, v20

    move-object/from16 v27, v24

    invoke-virtual/range {v27 .. v27}, Ljavafx/scene/layout/BackgroundFill;->getInsets()Ljavafx/geometry/Insets;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljavafx/geometry/Insets;->getRight()D

    move-result-wide v27

    invoke-static/range {v25 .. v28}, Ljava/lang/Math;->min(DD)D

    move-result-wide v25

    move-wide/from16 v20, v25

    .line 2581
    add-int/lit8 v22, v22, 0x1

    goto :goto_0

    .line 2588
    .end local v24    # "bf":Ljavafx/scene/layout/BackgroundFill;
    :cond_0
    move-object/from16 v25, v3

    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-object v0, v0, Ljavafx/scene/layout/Region;->_shape:Ljavafx/scene/shape/Shape;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/shape/Shape;->impl_configShape()Lcom/sun/javafx/geom/Shape;

    move-result-object v26

    move-wide/from16 v27, v4

    move-wide/from16 v29, v6

    move-wide/from16 v31, v14

    move-wide/from16 v33, v16

    move-wide/from16 v35, v18

    move-wide/from16 v37, v20

    invoke-direct/range {v25 .. v38}, Ljavafx/scene/layout/Region;->shapeContains(Lcom/sun/javafx/geom/Shape;DDDDDD)Z

    move-result v25

    move/from16 v3, v25

    .line 2632
    .end local v3    # "this":Ljavafx/scene/layout/Region;
    .end local v13    # "fills":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/layout/BackgroundFill;>;"
    .end local v14    # "topO":D
    .end local v16    # "leftO":D
    .end local v18    # "bottomO":D
    .end local v20    # "rightO":D
    .end local v22    # "i":I
    .end local v23    # "max":I
    :goto_1
    return v3

    .line 2590
    .restart local v3    # "this":Ljavafx/scene/layout/Region;
    :cond_1
    const/16 v25, 0x0

    move/from16 v3, v25

    goto :goto_1

    .line 2596
    :cond_2
    move-object/from16 v25, v12

    if-eqz v25, :cond_4

    .line 2597
    move-object/from16 v25, v12

    invoke-virtual/range {v25 .. v25}, Ljavafx/scene/layout/Background;->getFills()Ljava/util/List;

    move-result-object v25

    move-object/from16 v13, v25

    .line 2598
    .restart local v13    # "fills":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/layout/BackgroundFill;>;"
    const/16 v25, 0x0

    move/from16 v14, v25

    .local v14, "i":I
    move-object/from16 v25, v13

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v25

    move/from16 v15, v25

    .local v15, "max":I
    :goto_2
    move/from16 v25, v14

    move/from16 v26, v15

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_4

    .line 2599
    move-object/from16 v25, v13

    move/from16 v26, v14

    invoke-interface/range {v25 .. v26}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljavafx/scene/layout/BackgroundFill;

    move-object/from16 v16, v25

    .line 2600
    .local v16, "bgFill":Ljavafx/scene/layout/BackgroundFill;
    move-object/from16 v25, v3

    move-wide/from16 v26, v4

    move-wide/from16 v28, v6

    const-wide/16 v30, 0x0

    const-wide/16 v32, 0x0

    move-wide/from16 v34, v8

    move-wide/from16 v36, v10

    move-object/from16 v38, v16

    invoke-virtual/range {v38 .. v38}, Ljavafx/scene/layout/BackgroundFill;->getInsets()Ljavafx/geometry/Insets;

    move-result-object v38

    move-object/from16 v39, v3

    move/from16 v40, v14

    invoke-direct/range {v39 .. v40}, Ljavafx/scene/layout/Region;->getNormalizedFillCorner(I)Ljavafx/scene/layout/CornerRadii;

    move-result-object v39

    invoke-direct/range {v25 .. v39}, Ljavafx/scene/layout/Region;->contains(DDDDDDLjavafx/geometry/Insets;Ljavafx/scene/layout/CornerRadii;)Z

    move-result v25

    if-eqz v25, :cond_3

    .line 2601
    const/16 v25, 0x1

    move/from16 v3, v25

    goto :goto_1

    .line 2598
    :cond_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 2608
    .end local v13    # "fills":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/layout/BackgroundFill;>;"
    .end local v14    # "i":I
    .end local v15    # "max":I
    .end local v16    # "bgFill":Ljavafx/scene/layout/BackgroundFill;
    :cond_4
    move-object/from16 v25, v3

    invoke-virtual/range {v25 .. v25}, Ljavafx/scene/layout/Region;->getBorder()Ljavafx/scene/layout/Border;

    move-result-object v25

    move-object/from16 v13, v25

    .line 2609
    .local v13, "border":Ljavafx/scene/layout/Border;
    move-object/from16 v25, v13

    if-eqz v25, :cond_8

    .line 2613
    move-object/from16 v25, v13

    invoke-virtual/range {v25 .. v25}, Ljavafx/scene/layout/Border;->getStrokes()Ljava/util/List;

    move-result-object v25

    move-object/from16 v14, v25

    .line 2614
    .local v14, "strokes":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/layout/BorderStroke;>;"
    const/16 v25, 0x0

    move/from16 v15, v25

    .local v15, "i":I
    move-object/from16 v25, v14

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v25

    move/from16 v16, v25

    .local v16, "max":I
    :goto_3
    move/from16 v25, v15

    move/from16 v26, v16

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_6

    .line 2615
    move-object/from16 v25, v14

    move/from16 v26, v15

    invoke-interface/range {v25 .. v26}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljavafx/scene/layout/BorderStroke;

    move-object/from16 v17, v25

    .line 2616
    .local v17, "strokeBorder":Ljavafx/scene/layout/BorderStroke;
    move-object/from16 v25, v3

    move-wide/from16 v26, v4

    move-wide/from16 v28, v6

    const-wide/16 v30, 0x0

    const-wide/16 v32, 0x0

    move-wide/from16 v34, v8

    move-wide/from16 v36, v10

    move-object/from16 v38, v17

    invoke-virtual/range {v38 .. v38}, Ljavafx/scene/layout/BorderStroke;->getWidths()Ljavafx/scene/layout/BorderWidths;

    move-result-object v38

    const/16 v39, 0x0

    move-object/from16 v40, v17

    invoke-virtual/range {v40 .. v40}, Ljavafx/scene/layout/BorderStroke;->getInsets()Ljavafx/geometry/Insets;

    move-result-object v40

    move-object/from16 v41, v3

    move/from16 v42, v15

    .line 2617
    invoke-direct/range {v41 .. v42}, Ljavafx/scene/layout/Region;->getNormalizedStrokeCorner(I)Ljavafx/scene/layout/CornerRadii;

    move-result-object v41

    .line 2616
    invoke-direct/range {v25 .. v41}, Ljavafx/scene/layout/Region;->contains(DDDDDDLjavafx/scene/layout/BorderWidths;ZLjavafx/geometry/Insets;Ljavafx/scene/layout/CornerRadii;)Z

    move-result v25

    if-eqz v25, :cond_5

    .line 2618
    const/16 v25, 0x1

    move/from16 v3, v25

    goto/16 :goto_1

    .line 2614
    :cond_5
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 2623
    .end local v17    # "strokeBorder":Ljavafx/scene/layout/BorderStroke;
    :cond_6
    move-object/from16 v25, v13

    invoke-virtual/range {v25 .. v25}, Ljavafx/scene/layout/Border;->getImages()Ljava/util/List;

    move-result-object v25

    move-object/from16 v15, v25

    .line 2624
    .local v15, "images":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/layout/BorderImage;>;"
    const/16 v25, 0x0

    move/from16 v16, v25

    .local v16, "i":I
    move-object/from16 v25, v15

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v25

    move/from16 v17, v25

    .local v17, "max":I
    :goto_4
    move/from16 v25, v16

    move/from16 v26, v17

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_8

    .line 2625
    move-object/from16 v25, v15

    move/from16 v26, v16

    invoke-interface/range {v25 .. v26}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljavafx/scene/layout/BorderImage;

    move-object/from16 v18, v25

    .line 2626
    .local v18, "borderImage":Ljavafx/scene/layout/BorderImage;
    move-object/from16 v25, v3

    move-wide/from16 v26, v4

    move-wide/from16 v28, v6

    const-wide/16 v30, 0x0

    const-wide/16 v32, 0x0

    move-wide/from16 v34, v8

    move-wide/from16 v36, v10

    move-object/from16 v38, v18

    invoke-virtual/range {v38 .. v38}, Ljavafx/scene/layout/BorderImage;->getWidths()Ljavafx/scene/layout/BorderWidths;

    move-result-object v38

    move-object/from16 v39, v18

    invoke-virtual/range {v39 .. v39}, Ljavafx/scene/layout/BorderImage;->isFilled()Z

    move-result v39

    move-object/from16 v40, v18

    .line 2627
    invoke-virtual/range {v40 .. v40}, Ljavafx/scene/layout/BorderImage;->getInsets()Ljavafx/geometry/Insets;

    move-result-object v40

    sget-object v41, Ljavafx/scene/layout/CornerRadii;->EMPTY:Ljavafx/scene/layout/CornerRadii;

    .line 2626
    invoke-direct/range {v25 .. v41}, Ljavafx/scene/layout/Region;->contains(DDDDDDLjavafx/scene/layout/BorderWidths;ZLjavafx/geometry/Insets;Ljavafx/scene/layout/CornerRadii;)Z

    move-result v25

    if-eqz v25, :cond_7

    .line 2628
    const/16 v25, 0x1

    move/from16 v3, v25

    goto/16 :goto_1

    .line 2624
    :cond_7
    add-int/lit8 v16, v16, 0x1

    goto :goto_4

    .line 2632
    .end local v14    # "strokes":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/layout/BorderStroke;>;"
    .end local v15    # "images":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/layout/BorderImage;>;"
    .end local v16    # "i":I
    .end local v17    # "max":I
    .end local v18    # "borderImage":Ljavafx/scene/layout/BorderImage;
    :cond_8
    const/16 v25, 0x0

    move/from16 v3, v25

    goto/16 :goto_1
.end method

.method public impl_computeGeomBounds(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/BaseBounds;
    .locals 25
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3040
    move-object/from16 v2, p0

    .local v2, "this":Ljavafx/scene/layout/Region;
    move-object/from16 v3, p1

    .local v3, "bounds":Lcom/sun/javafx/geom/BaseBounds;
    move-object/from16 v4, p2

    .local v4, "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    const-wide/16 v18, 0x0

    move-wide/from16 v5, v18

    .line 3041
    .local v5, "bx1":D
    const-wide/16 v18, 0x0

    move-wide/from16 v7, v18

    .line 3042
    .local v7, "by1":D
    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/layout/Region;->getWidth()D

    move-result-wide v18

    move-wide/from16 v9, v18

    .line 3043
    .local v9, "bx2":D
    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/layout/Region;->getHeight()D

    move-result-wide v18

    move-wide/from16 v11, v18

    .line 3047
    .local v11, "by2":D
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavafx/scene/layout/Region;->_shape:Ljavafx/scene/shape/Shape;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1

    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/layout/Region;->isScaleShape()Z

    move-result v18

    if-nez v18, :cond_1

    .line 3049
    move-object/from16 v18, v2

    move-object/from16 v19, v3

    invoke-direct/range {v18 .. v19}, Ljavafx/scene/layout/Region;->computeShapeBounds(Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v18

    move-object/from16 v13, v18

    .line 3050
    .local v13, "shapeBounds":Lcom/sun/javafx/geom/BaseBounds;
    move-object/from16 v18, v13

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/geom/BaseBounds;->getWidth()F

    move-result v18

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v14, v18

    .line 3051
    .local v14, "shapeWidth":D
    move-object/from16 v18, v13

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/geom/BaseBounds;->getHeight()F

    move-result v18

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v16, v18

    .line 3052
    .local v16, "shapeHeight":D
    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/layout/Region;->isCenterShape()Z

    move-result v18

    if-eqz v18, :cond_0

    .line 3053
    move-wide/from16 v18, v9

    move-wide/from16 v20, v14

    sub-double v18, v18, v20

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    div-double v18, v18, v20

    move-wide/from16 v5, v18

    .line 3054
    move-wide/from16 v18, v11

    move-wide/from16 v20, v16

    sub-double v18, v18, v20

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    div-double v18, v18, v20

    move-wide/from16 v7, v18

    .line 3055
    move-wide/from16 v18, v5

    move-wide/from16 v20, v14

    add-double v18, v18, v20

    move-wide/from16 v9, v18

    .line 3056
    move-wide/from16 v18, v7

    move-wide/from16 v20, v16

    add-double v18, v18, v20

    move-wide/from16 v11, v18

    .line 3063
    .line 3078
    .end local v13    # "shapeBounds":Lcom/sun/javafx/geom/BaseBounds;
    .end local v14    # "shapeWidth":D
    .end local v16    # "shapeHeight":D
    :goto_0
    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v20, v4

    invoke-super/range {v18 .. v20}, Ljavafx/scene/Parent;->impl_computeGeomBounds(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v18

    move-object/from16 v13, v18

    .line 3086
    .local v13, "cb":Lcom/sun/javafx/geom/BaseBounds;
    move-object/from16 v18, v13

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/geom/BaseBounds;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_4

    .line 3088
    move-object/from16 v18, v3

    move-wide/from16 v19, v5

    move-wide/from16 v0, v19

    double-to-float v0, v0

    move/from16 v19, v0

    move-wide/from16 v20, v7

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v20, v0

    const/16 v21, 0x0

    move-wide/from16 v22, v9

    move-wide/from16 v0, v22

    double-to-float v0, v0

    move/from16 v22, v0

    move-wide/from16 v23, v11

    move-wide/from16 v0, v23

    double-to-float v0, v0

    move/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v18 .. v24}, Lcom/sun/javafx/geom/BaseBounds;->deriveWithNewBounds(FFFFFF)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v18

    move-object/from16 v3, v18

    .line 3091
    move-object/from16 v18, v4

    move-object/from16 v19, v3

    move-object/from16 v20, v3

    invoke-virtual/range {v18 .. v20}, Lcom/sun/javafx/geom/transform/BaseTransform;->transform(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v18

    move-object/from16 v3, v18

    .line 3092
    move-object/from16 v18, v3

    move-object/from16 v2, v18

    .line 3101
    .end local v2    # "this":Ljavafx/scene/layout/Region;
    :goto_1
    return-object v2

    .line 3058
    .restart local v2    # "this":Ljavafx/scene/layout/Region;
    .local v13, "shapeBounds":Lcom/sun/javafx/geom/BaseBounds;
    .restart local v14    # "shapeWidth":D
    .restart local v16    # "shapeHeight":D
    :cond_0
    move-object/from16 v18, v13

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/geom/BaseBounds;->getMinX()F

    move-result v18

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v5, v18

    .line 3059
    move-object/from16 v18, v13

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/geom/BaseBounds;->getMinY()F

    move-result v18

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v7, v18

    .line 3060
    move-object/from16 v18, v13

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/geom/BaseBounds;->getMaxX()F

    move-result v18

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v9, v18

    .line 3061
    move-object/from16 v18, v13

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/geom/BaseBounds;->getMaxY()F

    move-result v18

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v11, v18

    goto/16 :goto_0

    .line 3067
    .end local v13    # "shapeBounds":Lcom/sun/javafx/geom/BaseBounds;
    .end local v14    # "shapeWidth":D
    .end local v16    # "shapeHeight":D
    :cond_1
    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/layout/Region;->getBackground()Ljavafx/scene/layout/Background;

    move-result-object v18

    move-object/from16 v13, v18

    .line 3068
    .local v13, "background":Ljavafx/scene/layout/Background;
    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/layout/Region;->getBorder()Ljavafx/scene/layout/Border;

    move-result-object v18

    move-object/from16 v14, v18

    .line 3069
    .local v14, "border":Ljavafx/scene/layout/Border;
    move-object/from16 v18, v13

    if-nez v18, :cond_2

    sget-object v18, Ljavafx/geometry/Insets;->EMPTY:Ljavafx/geometry/Insets;

    :goto_2
    move-object/from16 v15, v18

    .line 3070
    .local v15, "backgroundOutsets":Ljavafx/geometry/Insets;
    move-object/from16 v18, v14

    if-nez v18, :cond_3

    sget-object v18, Ljavafx/geometry/Insets;->EMPTY:Ljavafx/geometry/Insets;

    :goto_3
    move-object/from16 v16, v18

    .line 3071
    .local v16, "borderOutsets":Ljavafx/geometry/Insets;
    move-wide/from16 v18, v5

    move-object/from16 v20, v15

    invoke-virtual/range {v20 .. v20}, Ljavafx/geometry/Insets;->getLeft()D

    move-result-wide v20

    move-object/from16 v22, v16

    invoke-virtual/range {v22 .. v22}, Ljavafx/geometry/Insets;->getLeft()D

    move-result-wide v22

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->max(DD)D

    move-result-wide v20

    sub-double v18, v18, v20

    move-wide/from16 v5, v18

    .line 3072
    move-wide/from16 v18, v7

    move-object/from16 v20, v15

    invoke-virtual/range {v20 .. v20}, Ljavafx/geometry/Insets;->getTop()D

    move-result-wide v20

    move-object/from16 v22, v16

    invoke-virtual/range {v22 .. v22}, Ljavafx/geometry/Insets;->getTop()D

    move-result-wide v22

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->max(DD)D

    move-result-wide v20

    sub-double v18, v18, v20

    move-wide/from16 v7, v18

    .line 3073
    move-wide/from16 v18, v9

    move-object/from16 v20, v15

    invoke-virtual/range {v20 .. v20}, Ljavafx/geometry/Insets;->getRight()D

    move-result-wide v20

    move-object/from16 v22, v16

    invoke-virtual/range {v22 .. v22}, Ljavafx/geometry/Insets;->getRight()D

    move-result-wide v22

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->max(DD)D

    move-result-wide v20

    add-double v18, v18, v20

    move-wide/from16 v9, v18

    .line 3074
    move-wide/from16 v18, v11

    move-object/from16 v20, v15

    invoke-virtual/range {v20 .. v20}, Ljavafx/geometry/Insets;->getBottom()D

    move-result-wide v20

    move-object/from16 v22, v16

    invoke-virtual/range {v22 .. v22}, Ljavafx/geometry/Insets;->getBottom()D

    move-result-wide v22

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->max(DD)D

    move-result-wide v20

    add-double v18, v18, v20

    move-wide/from16 v11, v18

    goto/16 :goto_0

    .line 3069
    .end local v15    # "backgroundOutsets":Ljavafx/geometry/Insets;
    .end local v16    # "borderOutsets":Ljavafx/geometry/Insets;
    :cond_2
    move-object/from16 v18, v13

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/layout/Background;->getOutsets()Ljavafx/geometry/Insets;

    move-result-object v18

    goto :goto_2

    .line 3070
    .restart local v15    # "backgroundOutsets":Ljavafx/geometry/Insets;
    :cond_3
    move-object/from16 v18, v14

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/layout/Border;->getOutsets()Ljavafx/geometry/Insets;

    move-result-object v18

    goto :goto_3

    .line 3095
    .end local v14    # "border":Ljavafx/scene/layout/Border;
    .end local v15    # "backgroundOutsets":Ljavafx/geometry/Insets;
    .local v13, "cb":Lcom/sun/javafx/geom/BaseBounds;
    :cond_4
    invoke-static {}, Lcom/sun/javafx/util/TempState;->getInstance()Lcom/sun/javafx/util/TempState;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/util/TempState;->bounds:Lcom/sun/javafx/geom/BaseBounds;

    move-object/from16 v18, v0

    move-object/from16 v14, v18

    .line 3096
    .local v14, "tempBounds":Lcom/sun/javafx/geom/BaseBounds;
    move-object/from16 v18, v14

    move-wide/from16 v19, v5

    move-wide/from16 v0, v19

    double-to-float v0, v0

    move/from16 v19, v0

    move-wide/from16 v20, v7

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v20, v0

    const/16 v21, 0x0

    move-wide/from16 v22, v9

    move-wide/from16 v0, v22

    double-to-float v0, v0

    move/from16 v22, v0

    move-wide/from16 v23, v11

    move-wide/from16 v0, v23

    double-to-float v0, v0

    move/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v18 .. v24}, Lcom/sun/javafx/geom/BaseBounds;->deriveWithNewBounds(FFFFFF)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v18

    move-object/from16 v14, v18

    .line 3099
    move-object/from16 v18, v4

    move-object/from16 v19, v14

    move-object/from16 v20, v14

    invoke-virtual/range {v18 .. v20}, Lcom/sun/javafx/geom/transform/BaseTransform;->transform(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v18

    move-object/from16 v15, v18

    .line 3100
    .local v15, "bb":Lcom/sun/javafx/geom/BaseBounds;
    move-object/from16 v18, v13

    move-object/from16 v19, v15

    invoke-virtual/range {v18 .. v19}, Lcom/sun/javafx/geom/BaseBounds;->deriveWithUnion(Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v18

    move-object/from16 v13, v18

    .line 3101
    move-object/from16 v18, v13

    move-object/from16 v2, v18

    goto/16 :goto_1
.end method

.method protected final impl_computeLayoutBounds()Ljavafx/geometry/Bounds;
    .locals 17
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2956
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/layout/Region;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/Region;->boundingBox:Ljavafx/geometry/Bounds;

    if-nez v1, :cond_0

    .line 2958
    move-object v1, v0

    new-instance v2, Ljavafx/geometry/BoundingBox;

    move-object/from16 v16, v2

    move-object/from16 v2, v16

    move-object/from16 v3, v16

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    move-object v10, v0

    invoke-virtual {v10}, Ljavafx/scene/layout/Region;->getWidth()D

    move-result-wide v10

    move-object v12, v0

    invoke-virtual {v12}, Ljavafx/scene/layout/Region;->getHeight()D

    move-result-wide v12

    const-wide/16 v14, 0x0

    invoke-direct/range {v3 .. v15}, Ljavafx/geometry/BoundingBox;-><init>(DDDDDD)V

    iput-object v2, v1, Ljavafx/scene/layout/Region;->boundingBox:Ljavafx/geometry/Bounds;

    .line 2960
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/Region;->boundingBox:Ljavafx/geometry/Bounds;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/Region;
    return-object v0
.end method

.method public impl_createPeer()Lcom/sun/javafx/sg/prism/NGNode;
    .locals 4

    .prologue
    .line 2471
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Region;
    new-instance v1, Lcom/sun/javafx/sg/prism/NGRegion;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Lcom/sun/javafx/sg/prism/NGRegion;-><init>()V

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/Region;
    return-object v0
.end method

.method protected final impl_notifyLayoutBoundsChanged()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2972
    return-void
.end method

.method protected impl_pickNodeLocal(Lcom/sun/javafx/geom/PickRay;Lcom/sun/javafx/scene/input/PickResultChooser;)V
    .locals 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2931
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/layout/Region;
    move-object v2, p1

    .local v2, "pickRay":Lcom/sun/javafx/geom/PickRay;
    move-object v3, p2

    .local v3, "result":Lcom/sun/javafx/scene/input/PickResultChooser;
    move-object v8, v1

    move-object v9, v2

    invoke-virtual {v8, v9}, Ljavafx/scene/layout/Region;->impl_intersectsBounds(Lcom/sun/javafx/geom/PickRay;)D

    move-result-wide v8

    move-wide v4, v8

    .line 2933
    .local v4, "boundsDistance":D
    move-wide v8, v4

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    move-result v8

    if-nez v8, :cond_2

    .line 2934
    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/layout/Region;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v8

    move-object v6, v8

    .line 2935
    .local v6, "children":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljavafx/scene/Node;>;"
    move-object v8, v6

    invoke-interface {v8}, Ljavafx/collections/ObservableList;->size()I

    move-result v8

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    move v7, v8

    .local v7, "i":I
    :goto_0
    move v8, v7

    if-ltz v8, :cond_1

    .line 2936
    move-object v8, v6

    move v9, v7

    invoke-interface {v8, v9}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljavafx/scene/Node;

    move-object v9, v2

    move-object v10, v3

    invoke-virtual {v8, v9, v10}, Ljavafx/scene/Node;->impl_pickNode(Lcom/sun/javafx/geom/PickRay;Lcom/sun/javafx/scene/input/PickResultChooser;)V

    .line 2937
    move-object v8, v3

    invoke-virtual {v8}, Lcom/sun/javafx/scene/input/PickResultChooser;->isClosed()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2938
    .line 2944
    .end local v6    # "children":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljavafx/scene/Node;>;"
    .end local v7    # "i":I
    :goto_1
    return-void

    .line 2935
    .restart local v6    # "children":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljavafx/scene/Node;>;"
    .restart local v7    # "i":I
    :cond_0
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    .line 2942
    :cond_1
    move-object v8, v1

    move-object v9, v2

    move-object v10, v3

    invoke-virtual {v8, v9, v10}, Ljavafx/scene/layout/Region;->impl_intersects(Lcom/sun/javafx/geom/PickRay;Lcom/sun/javafx/scene/input/PickResultChooser;)Z

    move-result v8

    .line 2944
    .end local v6    # "children":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljavafx/scene/Node;>;"
    .end local v7    # "i":I
    :cond_2
    goto :goto_1
.end method

.method public impl_updatePeer()V
    .locals 14

    .prologue
    .line 2368
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Region;
    move-object v8, v0

    invoke-super {v8}, Ljavafx/scene/Parent;->impl_updatePeer()V

    .line 2369
    move-object v8, v0

    iget-object v8, v8, Ljavafx/scene/layout/Region;->_shape:Ljavafx/scene/shape/Shape;

    if-eqz v8, :cond_0

    move-object v8, v0

    iget-object v8, v8, Ljavafx/scene/layout/Region;->_shape:Ljavafx/scene/shape/Shape;

    invoke-virtual {v8}, Ljavafx/scene/shape/Shape;->impl_syncPeer()V

    .line 2370
    :cond_0
    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/layout/Region;->impl_getPeer()Lcom/sun/javafx/sg/prism/NGNode;

    move-result-object v8

    check-cast v8, Lcom/sun/javafx/sg/prism/NGRegion;

    move-object v1, v8

    .line 2372
    .local v1, "pg":Lcom/sun/javafx/sg/prism/NGRegion;
    move-object v8, v0

    iget-boolean v8, v8, Ljavafx/scene/layout/Region;->cornersValid:Z

    if-nez v8, :cond_1

    .line 2373
    move-object v8, v0

    invoke-direct {v8}, Ljavafx/scene/layout/Region;->validateCorners()V

    .line 2376
    :cond_1
    move-object v8, v0

    sget-object v9, Lcom/sun/javafx/scene/DirtyBits;->NODE_GEOMETRY:Lcom/sun/javafx/scene/DirtyBits;

    invoke-virtual {v8, v9}, Ljavafx/scene/layout/Region;->impl_isDirty(Lcom/sun/javafx/scene/DirtyBits;)Z

    move-result v8

    move v2, v8

    .line 2377
    .local v2, "sizeChanged":Z
    move v8, v2

    if-eqz v8, :cond_2

    .line 2378
    move-object v8, v1

    move-object v9, v0

    invoke-virtual {v9}, Ljavafx/scene/layout/Region;->getWidth()D

    move-result-wide v9

    double-to-float v9, v9

    move-object v10, v0

    invoke-virtual {v10}, Ljavafx/scene/layout/Region;->getHeight()D

    move-result-wide v10

    double-to-float v10, v10

    invoke-virtual {v8, v9, v10}, Lcom/sun/javafx/sg/prism/NGRegion;->setSize(FF)V

    .line 2384
    :cond_2
    move-object v8, v0

    sget-object v9, Lcom/sun/javafx/scene/DirtyBits;->REGION_SHAPE:Lcom/sun/javafx/scene/DirtyBits;

    invoke-virtual {v8, v9}, Ljavafx/scene/layout/Region;->impl_isDirty(Lcom/sun/javafx/scene/DirtyBits;)Z

    move-result v8

    move v3, v8

    .line 2385
    .local v3, "shapeChanged":Z
    move v8, v3

    if-eqz v8, :cond_3

    .line 2386
    move-object v8, v1

    move-object v9, v0

    iget-object v9, v9, Ljavafx/scene/layout/Region;->_shape:Ljavafx/scene/shape/Shape;

    move-object v10, v0

    invoke-virtual {v10}, Ljavafx/scene/layout/Region;->isScaleShape()Z

    move-result v10

    move-object v11, v0

    invoke-virtual {v11}, Ljavafx/scene/layout/Region;->isCenterShape()Z

    move-result v11

    move-object v12, v0

    invoke-virtual {v12}, Ljavafx/scene/layout/Region;->isCacheShape()Z

    move-result v12

    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/sun/javafx/sg/prism/NGRegion;->updateShape(Ljava/lang/Object;ZZZ)V

    .line 2391
    :cond_3
    move-object v8, v1

    move-object v9, v0

    iget-object v9, v9, Ljavafx/scene/layout/Region;->normalizedFillCorners:Ljava/util/List;

    invoke-virtual {v8, v9}, Lcom/sun/javafx/sg/prism/NGRegion;->updateFillCorners(Ljava/util/List;)V

    .line 2392
    move-object v8, v0

    sget-object v9, Lcom/sun/javafx/scene/DirtyBits;->SHAPE_FILL:Lcom/sun/javafx/scene/DirtyBits;

    invoke-virtual {v8, v9}, Ljavafx/scene/layout/Region;->impl_isDirty(Lcom/sun/javafx/scene/DirtyBits;)Z

    move-result v8

    move v4, v8

    .line 2393
    .local v4, "backgroundChanged":Z
    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/layout/Region;->getBackground()Ljavafx/scene/layout/Background;

    move-result-object v8

    move-object v5, v8

    .line 2394
    .local v5, "bg":Ljavafx/scene/layout/Background;
    move v8, v4

    if-eqz v8, :cond_4

    .line 2395
    move-object v8, v1

    move-object v9, v5

    invoke-virtual {v8, v9}, Lcom/sun/javafx/sg/prism/NGRegion;->updateBackground(Ljavafx/scene/layout/Background;)V

    .line 2400
    :cond_4
    move-object v8, v0

    sget-object v9, Lcom/sun/javafx/scene/DirtyBits;->NODE_CONTENTS:Lcom/sun/javafx/scene/DirtyBits;

    invoke-virtual {v8, v9}, Ljavafx/scene/layout/Region;->impl_isDirty(Lcom/sun/javafx/scene/DirtyBits;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 2401
    move-object v8, v1

    invoke-virtual {v8}, Lcom/sun/javafx/sg/prism/NGRegion;->imagesUpdated()V

    .line 2406
    :cond_5
    move-object v8, v1

    move-object v9, v0

    iget-object v9, v9, Ljavafx/scene/layout/Region;->normalizedStrokeCorners:Ljava/util/List;

    invoke-virtual {v8, v9}, Lcom/sun/javafx/sg/prism/NGRegion;->updateStrokeCorners(Ljava/util/List;)V

    .line 2407
    move-object v8, v0

    sget-object v9, Lcom/sun/javafx/scene/DirtyBits;->SHAPE_STROKE:Lcom/sun/javafx/scene/DirtyBits;

    invoke-virtual {v8, v9}, Ljavafx/scene/layout/Region;->impl_isDirty(Lcom/sun/javafx/scene/DirtyBits;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 2408
    move-object v8, v1

    move-object v9, v0

    invoke-virtual {v9}, Ljavafx/scene/layout/Region;->getBorder()Ljavafx/scene/layout/Border;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sun/javafx/sg/prism/NGRegion;->updateBorder(Ljavafx/scene/layout/Border;)V

    .line 2417
    :cond_6
    move v8, v2

    if-nez v8, :cond_7

    move v8, v4

    if-nez v8, :cond_7

    move v8, v3

    if-eqz v8, :cond_8

    .line 2423
    :cond_7
    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/layout/Region;->getOpaqueInsets()Ljavafx/geometry/Insets;

    move-result-object v8

    move-object v6, v8

    .line 2428
    .local v6, "i":Ljavafx/geometry/Insets;
    move-object v8, v0

    iget-object v8, v8, Ljavafx/scene/layout/Region;->_shape:Ljavafx/scene/shape/Shape;

    if-eqz v8, :cond_a

    .line 2429
    move-object v8, v6

    if-eqz v8, :cond_9

    .line 2430
    move-object v8, v1

    move-object v9, v6

    invoke-virtual {v9}, Ljavafx/geometry/Insets;->getTop()D

    move-result-wide v9

    double-to-float v9, v9

    move-object v10, v6

    invoke-virtual {v10}, Ljavafx/geometry/Insets;->getRight()D

    move-result-wide v10

    double-to-float v10, v10

    move-object v11, v6

    .line 2431
    invoke-virtual {v11}, Ljavafx/geometry/Insets;->getBottom()D

    move-result-wide v11

    double-to-float v11, v11

    move-object v12, v6

    invoke-virtual {v12}, Ljavafx/geometry/Insets;->getLeft()D

    move-result-wide v12

    double-to-float v12, v12

    .line 2430
    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/sun/javafx/sg/prism/NGRegion;->setOpaqueInsets(FFFF)V

    .line 2467
    .end local v6    # "i":Ljavafx/geometry/Insets;
    :cond_8
    :goto_0
    return-void

    .line 2433
    .restart local v6    # "i":Ljavafx/geometry/Insets;
    :cond_9
    move-object v8, v1

    const/high16 v9, 0x7fc00000    # NaNf

    const/high16 v10, 0x7fc00000    # NaNf

    const/high16 v11, 0x7fc00000    # NaNf

    const/high16 v12, 0x7fc00000    # NaNf

    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/sun/javafx/sg/prism/NGRegion;->setOpaqueInsets(FFFF)V

    goto :goto_0

    .line 2440
    :cond_a
    move-object v8, v5

    if-eqz v8, :cond_b

    move-object v8, v5

    invoke-virtual {v8}, Ljavafx/scene/layout/Background;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_c

    .line 2441
    :cond_b
    move-object v8, v1

    const/high16 v9, 0x7fc00000    # NaNf

    const/high16 v10, 0x7fc00000    # NaNf

    const/high16 v11, 0x7fc00000    # NaNf

    const/high16 v12, 0x7fc00000    # NaNf

    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/sun/javafx/sg/prism/NGRegion;->setOpaqueInsets(FFFF)V

    goto :goto_0

    .line 2451
    :cond_c
    const/4 v8, 0x4

    new-array v8, v8, [D

    move-object v7, v8

    .line 2452
    .local v7, "trbl":[D
    move-object v8, v5

    move-object v9, v0

    invoke-virtual {v9}, Ljavafx/scene/layout/Region;->getWidth()D

    move-result-wide v9

    move-object v11, v0

    invoke-virtual {v11}, Ljavafx/scene/layout/Region;->getHeight()D

    move-result-wide v11

    move-object v13, v7

    invoke-virtual/range {v8 .. v13}, Ljavafx/scene/layout/Background;->computeOpaqueInsets(DD[D)V

    .line 2454
    move-object v8, v6

    if-eqz v8, :cond_d

    .line 2455
    move-object v8, v7

    const/4 v9, 0x0

    move-object v10, v7

    const/4 v11, 0x0

    aget-wide v10, v10, v11

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    move-result v10

    if-eqz v10, :cond_e

    move-object v10, v6

    invoke-virtual {v10}, Ljavafx/geometry/Insets;->getTop()D

    move-result-wide v10

    :goto_1
    aput-wide v10, v8, v9

    .line 2456
    move-object v8, v7

    const/4 v9, 0x1

    move-object v10, v7

    const/4 v11, 0x1

    aget-wide v10, v10, v11

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    move-result v10

    if-eqz v10, :cond_10

    move-object v10, v6

    invoke-virtual {v10}, Ljavafx/geometry/Insets;->getRight()D

    move-result-wide v10

    :goto_2
    aput-wide v10, v8, v9

    .line 2457
    move-object v8, v7

    const/4 v9, 0x2

    move-object v10, v7

    const/4 v11, 0x2

    aget-wide v10, v10, v11

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    move-result v10

    if-eqz v10, :cond_12

    move-object v10, v6

    invoke-virtual {v10}, Ljavafx/geometry/Insets;->getBottom()D

    move-result-wide v10

    :goto_3
    aput-wide v10, v8, v9

    .line 2458
    move-object v8, v7

    const/4 v9, 0x3

    move-object v10, v7

    const/4 v11, 0x3

    aget-wide v10, v10, v11

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    move-result v10

    if-eqz v10, :cond_14

    move-object v10, v6

    invoke-virtual {v10}, Ljavafx/geometry/Insets;->getLeft()D

    move-result-wide v10

    :goto_4
    aput-wide v10, v8, v9

    .line 2463
    :cond_d
    move-object v8, v1

    move-object v9, v7

    const/4 v10, 0x0

    aget-wide v9, v9, v10

    double-to-float v9, v9

    move-object v10, v7

    const/4 v11, 0x1

    aget-wide v10, v10, v11

    double-to-float v10, v10

    move-object v11, v7

    const/4 v12, 0x2

    aget-wide v11, v11, v12

    double-to-float v11, v11

    move-object v12, v7

    const/4 v13, 0x3

    aget-wide v12, v12, v13

    double-to-float v12, v12

    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/sun/javafx/sg/prism/NGRegion;->setOpaqueInsets(FFFF)V

    goto/16 :goto_0

    .line 2455
    :cond_e
    move-object v10, v6

    invoke-virtual {v10}, Ljavafx/geometry/Insets;->getTop()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    move-result v10

    if-eqz v10, :cond_f

    move-object v10, v7

    const/4 v11, 0x0

    aget-wide v10, v10, v11

    goto :goto_1

    :cond_f
    move-object v10, v7

    const/4 v11, 0x0

    aget-wide v10, v10, v11

    move-object v12, v6

    invoke-virtual {v12}, Ljavafx/geometry/Insets;->getTop()D

    move-result-wide v12

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->min(DD)D

    move-result-wide v10

    goto :goto_1

    .line 2456
    :cond_10
    move-object v10, v6

    invoke-virtual {v10}, Ljavafx/geometry/Insets;->getRight()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    move-result v10

    if-eqz v10, :cond_11

    move-object v10, v7

    const/4 v11, 0x1

    aget-wide v10, v10, v11

    goto :goto_2

    :cond_11
    move-object v10, v7

    const/4 v11, 0x1

    aget-wide v10, v10, v11

    move-object v12, v6

    invoke-virtual {v12}, Ljavafx/geometry/Insets;->getRight()D

    move-result-wide v12

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->min(DD)D

    move-result-wide v10

    goto :goto_2

    .line 2457
    :cond_12
    move-object v10, v6

    invoke-virtual {v10}, Ljavafx/geometry/Insets;->getBottom()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    move-result v10

    if-eqz v10, :cond_13

    move-object v10, v7

    const/4 v11, 0x2

    aget-wide v10, v10, v11

    goto :goto_3

    :cond_13
    move-object v10, v7

    const/4 v11, 0x2

    aget-wide v10, v10, v11

    move-object v12, v6

    invoke-virtual {v12}, Ljavafx/geometry/Insets;->getBottom()D

    move-result-wide v12

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->min(DD)D

    move-result-wide v10

    goto/16 :goto_3

    .line 2458
    :cond_14
    move-object v10, v6

    invoke-virtual {v10}, Ljavafx/geometry/Insets;->getLeft()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    move-result v10

    if-eqz v10, :cond_15

    move-object v10, v7

    const/4 v11, 0x3

    aget-wide v10, v10, v11

    goto/16 :goto_4

    :cond_15
    move-object v10, v7

    const/4 v11, 0x3

    aget-wide v10, v10, v11

    move-object v12, v6

    invoke-virtual {v12}, Ljavafx/geometry/Insets;->getLeft()D

    move-result-wide v12

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->min(DD)D

    move-result-wide v10

    goto/16 :goto_4
.end method

.method public final insetsProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ReadOnlyObjectProperty",
            "<",
            "Ljavafx/geometry/Insets;",
            ">;"
        }
    .end annotation

    .prologue
    .line 745
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Region;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/Region;->insets:Ljavafx/scene/layout/Region$InsetsProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/Region;
    return-object v0
.end method

.method public final isCacheShape()Z
    .locals 2

    .prologue
    .line 1324
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Region;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/Region;->cacheShape:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/Region;
    return v0

    .restart local v0    # "this":Ljavafx/scene/layout/Region;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/Region;->cacheShape:Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->get()Z

    move-result v1

    goto :goto_0
.end method

.method public final isCenterShape()Z
    .locals 2

    .prologue
    .line 1296
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Region;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/Region;->centerShape:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/Region;
    return v0

    .restart local v0    # "this":Ljavafx/scene/layout/Region;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/Region;->centerShape:Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->get()Z

    move-result v1

    goto :goto_0
.end method

.method public isResizable()Z
    .locals 2

    .prologue
    .line 1349
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Region;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/Region;
    return v0
.end method

.method public final isScaleShape()Z
    .locals 2

    .prologue
    .line 1267
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Region;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/Region;->scaleShape:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/Region;
    return v0

    .restart local v0    # "this":Ljavafx/scene/layout/Region;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/Region;->scaleShape:Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->get()Z

    move-result v1

    goto :goto_0
.end method

.method public final isSnapToPixel()Z
    .locals 2

    .prologue
    .line 483
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Region;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/layout/Region;->_snapToPixel:Z

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/Region;
    return v0
.end method

.method protected layoutInArea(Ljavafx/scene/Node;DDDDDLjavafx/geometry/HPos;Ljavafx/geometry/VPos;)V
    .locals 30

    .prologue
    .line 2123
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/layout/Region;
    move-object/from16 v1, p1

    .local v1, "child":Ljavafx/scene/Node;
    move-wide/from16 v2, p2

    .local v2, "areaX":D
    move-wide/from16 v4, p4

    .local v4, "areaY":D
    move-wide/from16 v6, p6

    .local v6, "areaWidth":D
    move-wide/from16 v8, p8

    .local v8, "areaHeight":D
    move-wide/from16 v10, p10

    .local v10, "areaBaselineOffset":D
    move-object/from16 v12, p12

    .local v12, "halignment":Ljavafx/geometry/HPos;
    move-object/from16 v13, p13

    .local v13, "valignment":Ljavafx/geometry/VPos;
    move-object v14, v0

    move-object v15, v1

    move-wide/from16 v16, v2

    move-wide/from16 v18, v4

    move-wide/from16 v20, v6

    move-wide/from16 v22, v8

    move-wide/from16 v24, v10

    sget-object v26, Ljavafx/geometry/Insets;->EMPTY:Ljavafx/geometry/Insets;

    move-object/from16 v27, v12

    move-object/from16 v28, v13

    invoke-virtual/range {v14 .. v28}, Ljavafx/scene/layout/Region;->layoutInArea(Ljavafx/scene/Node;DDDDDLjavafx/geometry/Insets;Ljavafx/geometry/HPos;Ljavafx/geometry/VPos;)V

    .line 2125
    return-void
.end method

.method protected layoutInArea(Ljavafx/scene/Node;DDDDDLjavafx/geometry/Insets;Ljavafx/geometry/HPos;Ljavafx/geometry/VPos;)V
    .locals 32

    .prologue
    .line 2179
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/layout/Region;
    move-object/from16 v1, p1

    .local v1, "child":Ljavafx/scene/Node;
    move-wide/from16 v2, p2

    .local v2, "areaX":D
    move-wide/from16 v4, p4

    .local v4, "areaY":D
    move-wide/from16 v6, p6

    .local v6, "areaWidth":D
    move-wide/from16 v8, p8

    .local v8, "areaHeight":D
    move-wide/from16 v10, p10

    .local v10, "areaBaselineOffset":D
    move-object/from16 v12, p12

    .local v12, "margin":Ljavafx/geometry/Insets;
    move-object/from16 v13, p13

    .local v13, "halignment":Ljavafx/geometry/HPos;
    move-object/from16 v14, p14

    .local v14, "valignment":Ljavafx/geometry/VPos;
    move-object v15, v0

    move-object/from16 v16, v1

    move-wide/from16 v17, v2

    move-wide/from16 v19, v4

    move-wide/from16 v21, v6

    move-wide/from16 v23, v8

    move-wide/from16 v25, v10

    move-object/from16 v27, v12

    const/16 v28, 0x1

    const/16 v29, 0x1

    move-object/from16 v30, v13

    move-object/from16 v31, v14

    invoke-virtual/range {v15 .. v31}, Ljavafx/scene/layout/Region;->layoutInArea(Ljavafx/scene/Node;DDDDDLjavafx/geometry/Insets;ZZLjavafx/geometry/HPos;Ljavafx/geometry/VPos;)V

    .line 2181
    return-void
.end method

.method protected layoutInArea(Ljavafx/scene/Node;DDDDDLjavafx/geometry/Insets;ZZLjavafx/geometry/HPos;Ljavafx/geometry/VPos;)V
    .locals 34

    .prologue
    .line 2238
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/layout/Region;
    move-object/from16 v1, p1

    .local v1, "child":Ljavafx/scene/Node;
    move-wide/from16 v2, p2

    .local v2, "areaX":D
    move-wide/from16 v4, p4

    .local v4, "areaY":D
    move-wide/from16 v6, p6

    .local v6, "areaWidth":D
    move-wide/from16 v8, p8

    .local v8, "areaHeight":D
    move-wide/from16 v10, p10

    .local v10, "areaBaselineOffset":D
    move-object/from16 v12, p12

    .local v12, "margin":Ljavafx/geometry/Insets;
    move/from16 v13, p13

    .local v13, "fillWidth":Z
    move/from16 v14, p14

    .local v14, "fillHeight":Z
    move-object/from16 v15, p15

    .local v15, "halignment":Ljavafx/geometry/HPos;
    move-object/from16 v16, p16

    .local v16, "valignment":Ljavafx/geometry/VPos;
    move-object/from16 v17, v1

    move-wide/from16 v18, v2

    move-wide/from16 v20, v4

    move-wide/from16 v22, v6

    move-wide/from16 v24, v8

    move-wide/from16 v26, v10

    move-object/from16 v28, v12

    move/from16 v29, v13

    move/from16 v30, v14

    move-object/from16 v31, v15

    move-object/from16 v32, v16

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljavafx/scene/layout/Region;->isSnapToPixel()Z

    move-result v33

    invoke-static/range {v17 .. v33}, Ljavafx/scene/layout/Region;->layoutInArea(Ljavafx/scene/Node;DDDDDLjavafx/geometry/Insets;ZZLjavafx/geometry/HPos;Ljavafx/geometry/VPos;Z)V

    .line 2239
    return-void
.end method

.method public final maxHeight(D)D
    .locals 11

    .prologue
    .line 1467
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/layout/Region;
    move-wide v2, p1

    .local v2, "width":D
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/layout/Region;->getMaxHeight()D

    move-result-wide v6

    move-wide v4, v6

    .line 1468
    .local v4, "override":D
    move-wide v6, v4

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    cmpl-double v6, v6, v8

    if-nez v6, :cond_0

    .line 1469
    move-object v6, v1

    move-wide v7, v2

    invoke-virtual {v6, v7, v8}, Ljavafx/scene/layout/Region;->computeMaxHeight(D)D

    move-result-wide v6

    move-wide v1, v6

    .line 1473
    .end local v1    # "this":Ljavafx/scene/layout/Region;
    :goto_0
    return-wide v1

    .line 1470
    .restart local v1    # "this":Ljavafx/scene/layout/Region;
    :cond_0
    move-wide v6, v4

    const-wide/high16 v8, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v6, v6, v8

    if-nez v6, :cond_1

    .line 1471
    move-object v6, v1

    move-wide v7, v2

    invoke-virtual {v6, v7, v8}, Ljavafx/scene/layout/Region;->prefHeight(D)D

    move-result-wide v6

    move-wide v1, v6

    goto :goto_0

    .line 1473
    :cond_1
    move-wide v6, v4

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v6

    if-nez v6, :cond_2

    move-wide v6, v4

    const-wide/16 v8, 0x0

    cmpg-double v6, v6, v8

    if-gez v6, :cond_3

    :cond_2
    const-wide/16 v6, 0x0

    :goto_1
    move-wide v1, v6

    goto :goto_0

    :cond_3
    move-wide v6, v4

    goto :goto_1
.end method

.method public final maxHeightProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 10

    .prologue
    .line 1179
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Region;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/Region;->maxHeight:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    move-object v1, v0

    new-instance v2, Ljavafx/scene/layout/Region$MinPrefMaxProperty;

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    move-object v4, v0

    const-string v5, "maxHeight"

    move-object v6, v0

    iget-wide v6, v6, Ljavafx/scene/layout/Region;->_maxHeight:D

    # getter for: Ljavafx/scene/layout/Region$StyleableProperties;->MAX_HEIGHT:Ljavafx/css/CssMetaData;
    invoke-static {}, Ljavafx/scene/layout/Region$StyleableProperties;->access$2500()Ljavafx/css/CssMetaData;

    move-result-object v8

    invoke-direct/range {v3 .. v8}, Ljavafx/scene/layout/Region$MinPrefMaxProperty;-><init>(Ljavafx/scene/layout/Region;Ljava/lang/String;DLjavafx/css/CssMetaData;)V

    iput-object v2, v1, Ljavafx/scene/layout/Region;->maxHeight:Ljavafx/beans/property/DoubleProperty;

    .line 1180
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/Region;->maxHeight:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/Region;
    return-object v0
.end method

.method public final maxWidth(D)D
    .locals 11

    .prologue
    .line 1449
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/layout/Region;
    move-wide v2, p1

    .local v2, "height":D
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/layout/Region;->getMaxWidth()D

    move-result-wide v6

    move-wide v4, v6

    .line 1450
    .local v4, "override":D
    move-wide v6, v4

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    cmpl-double v6, v6, v8

    if-nez v6, :cond_0

    .line 1451
    move-object v6, v1

    move-wide v7, v2

    invoke-virtual {v6, v7, v8}, Ljavafx/scene/layout/Region;->computeMaxWidth(D)D

    move-result-wide v6

    move-wide v1, v6

    .line 1455
    .end local v1    # "this":Ljavafx/scene/layout/Region;
    :goto_0
    return-wide v1

    .line 1452
    .restart local v1    # "this":Ljavafx/scene/layout/Region;
    :cond_0
    move-wide v6, v4

    const-wide/high16 v8, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v6, v6, v8

    if-nez v6, :cond_1

    .line 1453
    move-object v6, v1

    move-wide v7, v2

    invoke-virtual {v6, v7, v8}, Ljavafx/scene/layout/Region;->prefWidth(D)D

    move-result-wide v6

    move-wide v1, v6

    goto :goto_0

    .line 1455
    :cond_1
    move-wide v6, v4

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v6

    if-nez v6, :cond_2

    move-wide v6, v4

    const-wide/16 v8, 0x0

    cmpg-double v6, v6, v8

    if-gez v6, :cond_3

    :cond_2
    const-wide/16 v6, 0x0

    :goto_1
    move-wide v1, v6

    goto :goto_0

    :cond_3
    move-wide v6, v4

    goto :goto_1
.end method

.method public final maxWidthProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 10

    .prologue
    .line 1150
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Region;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/Region;->maxWidth:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    move-object v1, v0

    new-instance v2, Ljavafx/scene/layout/Region$MinPrefMaxProperty;

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    move-object v4, v0

    const-string v5, "maxWidth"

    move-object v6, v0

    iget-wide v6, v6, Ljavafx/scene/layout/Region;->_maxWidth:D

    # getter for: Ljavafx/scene/layout/Region$StyleableProperties;->MAX_WIDTH:Ljavafx/css/CssMetaData;
    invoke-static {}, Ljavafx/scene/layout/Region$StyleableProperties;->access$2400()Ljavafx/css/CssMetaData;

    move-result-object v8

    invoke-direct/range {v3 .. v8}, Ljavafx/scene/layout/Region$MinPrefMaxProperty;-><init>(Ljavafx/scene/layout/Region;Ljava/lang/String;DLjavafx/css/CssMetaData;)V

    iput-object v2, v1, Ljavafx/scene/layout/Region;->maxWidth:Ljavafx/beans/property/DoubleProperty;

    .line 1151
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/Region;->maxWidth:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/Region;
    return-object v0
.end method

.method public final minHeight(D)D
    .locals 11

    .prologue
    .line 1399
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/layout/Region;
    move-wide v2, p1

    .local v2, "width":D
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/layout/Region;->getMinHeight()D

    move-result-wide v6

    move-wide v4, v6

    .line 1400
    .local v4, "override":D
    move-wide v6, v4

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    cmpl-double v6, v6, v8

    if-nez v6, :cond_0

    .line 1401
    move-object v6, v1

    move-wide v7, v2

    invoke-super {v6, v7, v8}, Ljavafx/scene/Parent;->minHeight(D)D

    move-result-wide v6

    move-wide v1, v6

    .line 1405
    .end local v1    # "this":Ljavafx/scene/layout/Region;
    :goto_0
    return-wide v1

    .line 1402
    .restart local v1    # "this":Ljavafx/scene/layout/Region;
    :cond_0
    move-wide v6, v4

    const-wide/high16 v8, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v6, v6, v8

    if-nez v6, :cond_1

    .line 1403
    move-object v6, v1

    move-wide v7, v2

    invoke-virtual {v6, v7, v8}, Ljavafx/scene/layout/Region;->prefHeight(D)D

    move-result-wide v6

    move-wide v1, v6

    goto :goto_0

    .line 1405
    :cond_1
    move-wide v6, v4

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v6

    if-nez v6, :cond_2

    move-wide v6, v4

    const-wide/16 v8, 0x0

    cmpg-double v6, v6, v8

    if-gez v6, :cond_3

    :cond_2
    const-wide/16 v6, 0x0

    :goto_1
    move-wide v1, v6

    goto :goto_0

    :cond_3
    move-wide v6, v4

    goto :goto_1
.end method

.method public final minHeightProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 10

    .prologue
    .line 1041
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Region;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/Region;->minHeight:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    move-object v1, v0

    new-instance v2, Ljavafx/scene/layout/Region$MinPrefMaxProperty;

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    move-object v4, v0

    const-string v5, "minHeight"

    move-object v6, v0

    iget-wide v6, v6, Ljavafx/scene/layout/Region;->_minHeight:D

    # getter for: Ljavafx/scene/layout/Region$StyleableProperties;->MIN_HEIGHT:Ljavafx/css/CssMetaData;
    invoke-static {}, Ljavafx/scene/layout/Region$StyleableProperties;->access$2100()Ljavafx/css/CssMetaData;

    move-result-object v8

    invoke-direct/range {v3 .. v8}, Ljavafx/scene/layout/Region$MinPrefMaxProperty;-><init>(Ljavafx/scene/layout/Region;Ljava/lang/String;DLjavafx/css/CssMetaData;)V

    iput-object v2, v1, Ljavafx/scene/layout/Region;->minHeight:Ljavafx/beans/property/DoubleProperty;

    .line 1042
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/Region;->minHeight:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/Region;
    return-object v0
.end method

.method public final minWidth(D)D
    .locals 11

    .prologue
    .line 1381
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/layout/Region;
    move-wide v2, p1

    .local v2, "height":D
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/layout/Region;->getMinWidth()D

    move-result-wide v6

    move-wide v4, v6

    .line 1382
    .local v4, "override":D
    move-wide v6, v4

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    cmpl-double v6, v6, v8

    if-nez v6, :cond_0

    .line 1383
    move-object v6, v1

    move-wide v7, v2

    invoke-super {v6, v7, v8}, Ljavafx/scene/Parent;->minWidth(D)D

    move-result-wide v6

    move-wide v1, v6

    .line 1387
    .end local v1    # "this":Ljavafx/scene/layout/Region;
    :goto_0
    return-wide v1

    .line 1384
    .restart local v1    # "this":Ljavafx/scene/layout/Region;
    :cond_0
    move-wide v6, v4

    const-wide/high16 v8, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v6, v6, v8

    if-nez v6, :cond_1

    .line 1385
    move-object v6, v1

    move-wide v7, v2

    invoke-virtual {v6, v7, v8}, Ljavafx/scene/layout/Region;->prefWidth(D)D

    move-result-wide v6

    move-wide v1, v6

    goto :goto_0

    .line 1387
    :cond_1
    move-wide v6, v4

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v6

    if-nez v6, :cond_2

    move-wide v6, v4

    const-wide/16 v8, 0x0

    cmpg-double v6, v6, v8

    if-gez v6, :cond_3

    :cond_2
    const-wide/16 v6, 0x0

    :goto_1
    move-wide v1, v6

    goto :goto_0

    :cond_3
    move-wide v6, v4

    goto :goto_1
.end method

.method public final minWidthProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 10

    .prologue
    .line 1011
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Region;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/Region;->minWidth:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    move-object v1, v0

    new-instance v2, Ljavafx/scene/layout/Region$MinPrefMaxProperty;

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    move-object v4, v0

    const-string v5, "minWidth"

    move-object v6, v0

    iget-wide v6, v6, Ljavafx/scene/layout/Region;->_minWidth:D

    # getter for: Ljavafx/scene/layout/Region$StyleableProperties;->MIN_WIDTH:Ljavafx/css/CssMetaData;
    invoke-static {}, Ljavafx/scene/layout/Region$StyleableProperties;->access$2000()Ljavafx/css/CssMetaData;

    move-result-object v8

    invoke-direct/range {v3 .. v8}, Ljavafx/scene/layout/Region$MinPrefMaxProperty;-><init>(Ljavafx/scene/layout/Region;Ljava/lang/String;DLjavafx/css/CssMetaData;)V

    iput-object v2, v1, Ljavafx/scene/layout/Region;->minWidth:Ljavafx/beans/property/DoubleProperty;

    .line 1012
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/Region;->minWidth:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/Region;
    return-object v0
.end method

.method public final opaqueInsetsProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/geometry/Insets;",
            ">;"
        }
    .end annotation

    .prologue
    .line 714
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Region;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/Region;->opaqueInsets:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 715
    move-object v1, v0

    new-instance v2, Ljavafx/scene/layout/Region$5;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/layout/Region$5;-><init>(Ljavafx/scene/layout/Region;)V

    iput-object v2, v1, Ljavafx/scene/layout/Region;->opaqueInsets:Ljavafx/beans/property/ObjectProperty;

    .line 730
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/Region;->opaqueInsets:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/Region;
    return-object v0
.end method

.method public final paddingProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/geometry/Insets;",
            ">;"
        }
    .end annotation

    .prologue
    .line 561
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Region;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/Region;->padding:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/Region;
    return-object v0
.end method

.method protected positionInArea(Ljavafx/scene/Node;DDDDDLjavafx/geometry/HPos;Ljavafx/geometry/VPos;)V
    .locals 30

    .prologue
    .line 2029
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/layout/Region;
    move-object/from16 v1, p1

    .local v1, "child":Ljavafx/scene/Node;
    move-wide/from16 v2, p2

    .local v2, "areaX":D
    move-wide/from16 v4, p4

    .local v4, "areaY":D
    move-wide/from16 v6, p6

    .local v6, "areaWidth":D
    move-wide/from16 v8, p8

    .local v8, "areaHeight":D
    move-wide/from16 v10, p10

    .local v10, "areaBaselineOffset":D
    move-object/from16 v12, p12

    .local v12, "halignment":Ljavafx/geometry/HPos;
    move-object/from16 v13, p13

    .local v13, "valignment":Ljavafx/geometry/VPos;
    move-object v14, v1

    move-wide v15, v2

    move-wide/from16 v17, v4

    move-wide/from16 v19, v6

    move-wide/from16 v21, v8

    move-wide/from16 v23, v10

    sget-object v25, Ljavafx/geometry/Insets;->EMPTY:Ljavafx/geometry/Insets;

    move-object/from16 v26, v12

    move-object/from16 v27, v13

    move-object/from16 v28, v0

    .line 2030
    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/layout/Region;->isSnapToPixel()Z

    move-result v28

    .line 2029
    invoke-static/range {v14 .. v28}, Ljavafx/scene/layout/Region;->positionInArea(Ljavafx/scene/Node;DDDDDLjavafx/geometry/Insets;Ljavafx/geometry/HPos;Ljavafx/geometry/VPos;Z)V

    .line 2031
    return-void
.end method

.method public final prefHeight(D)D
    .locals 11

    .prologue
    .line 1433
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/layout/Region;
    move-wide v2, p1

    .local v2, "width":D
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/layout/Region;->getPrefHeight()D

    move-result-wide v6

    move-wide v4, v6

    .line 1434
    .local v4, "override":D
    move-wide v6, v4

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    cmpl-double v6, v6, v8

    if-nez v6, :cond_0

    .line 1435
    move-object v6, v1

    move-wide v7, v2

    invoke-super {v6, v7, v8}, Ljavafx/scene/Parent;->prefHeight(D)D

    move-result-wide v6

    move-wide v1, v6

    .line 1437
    .end local v1    # "this":Ljavafx/scene/layout/Region;
    :goto_0
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/layout/Region;
    :cond_0
    move-wide v6, v4

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v6

    if-nez v6, :cond_1

    move-wide v6, v4

    const-wide/16 v8, 0x0

    cmpg-double v6, v6, v8

    if-gez v6, :cond_2

    :cond_1
    const-wide/16 v6, 0x0

    :goto_1
    move-wide v1, v6

    goto :goto_0

    :cond_2
    move-wide v6, v4

    goto :goto_1
.end method

.method public final prefHeightProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 10

    .prologue
    .line 1106
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Region;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/Region;->prefHeight:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    move-object v1, v0

    new-instance v2, Ljavafx/scene/layout/Region$MinPrefMaxProperty;

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    move-object v4, v0

    const-string v5, "prefHeight"

    move-object v6, v0

    iget-wide v6, v6, Ljavafx/scene/layout/Region;->_prefHeight:D

    # getter for: Ljavafx/scene/layout/Region$StyleableProperties;->PREF_HEIGHT:Ljavafx/css/CssMetaData;
    invoke-static {}, Ljavafx/scene/layout/Region$StyleableProperties;->access$2300()Ljavafx/css/CssMetaData;

    move-result-object v8

    invoke-direct/range {v3 .. v8}, Ljavafx/scene/layout/Region$MinPrefMaxProperty;-><init>(Ljavafx/scene/layout/Region;Ljava/lang/String;DLjavafx/css/CssMetaData;)V

    iput-object v2, v1, Ljavafx/scene/layout/Region;->prefHeight:Ljavafx/beans/property/DoubleProperty;

    .line 1107
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/Region;->prefHeight:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/Region;
    return-object v0
.end method

.method public final prefWidth(D)D
    .locals 11

    .prologue
    .line 1417
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/layout/Region;
    move-wide v2, p1

    .local v2, "height":D
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/layout/Region;->getPrefWidth()D

    move-result-wide v6

    move-wide v4, v6

    .line 1418
    .local v4, "override":D
    move-wide v6, v4

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    cmpl-double v6, v6, v8

    if-nez v6, :cond_0

    .line 1419
    move-object v6, v1

    move-wide v7, v2

    invoke-super {v6, v7, v8}, Ljavafx/scene/Parent;->prefWidth(D)D

    move-result-wide v6

    move-wide v1, v6

    .line 1421
    .end local v1    # "this":Ljavafx/scene/layout/Region;
    :goto_0
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/layout/Region;
    :cond_0
    move-wide v6, v4

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v6

    if-nez v6, :cond_1

    move-wide v6, v4

    const-wide/16 v8, 0x0

    cmpg-double v6, v6, v8

    if-gez v6, :cond_2

    :cond_1
    const-wide/16 v6, 0x0

    :goto_1
    move-wide v1, v6

    goto :goto_0

    :cond_2
    move-wide v6, v4

    goto :goto_1
.end method

.method public final prefWidthProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 10

    .prologue
    .line 1081
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Region;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/Region;->prefWidth:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    move-object v1, v0

    new-instance v2, Ljavafx/scene/layout/Region$MinPrefMaxProperty;

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    move-object v4, v0

    const-string v5, "prefWidth"

    move-object v6, v0

    iget-wide v6, v6, Ljavafx/scene/layout/Region;->_prefWidth:D

    # getter for: Ljavafx/scene/layout/Region$StyleableProperties;->PREF_WIDTH:Ljavafx/css/CssMetaData;
    invoke-static {}, Ljavafx/scene/layout/Region$StyleableProperties;->access$2200()Ljavafx/css/CssMetaData;

    move-result-object v8

    invoke-direct/range {v3 .. v8}, Ljavafx/scene/layout/Region$MinPrefMaxProperty;-><init>(Ljavafx/scene/layout/Region;Ljava/lang/String;DLjavafx/css/CssMetaData;)V

    iput-object v2, v1, Ljavafx/scene/layout/Region;->prefWidth:Ljavafx/beans/property/DoubleProperty;

    .line 1082
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/Region;->prefWidth:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/Region;
    return-object v0
.end method

.method removeImageListener(Ljavafx/scene/image/Image;)V
    .locals 5

    .prologue
    .line 698
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Region;
    move-object v1, p1

    .local v1, "image":Ljavafx/scene/image/Image;
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getImageAccessor()Lcom/sun/javafx/tk/Toolkit$ImageAccessor;

    move-result-object v3

    move-object v2, v3

    .line 699
    .local v2, "acc":Lcom/sun/javafx/tk/Toolkit$ImageAccessor;
    move-object v3, v2

    move-object v4, v1

    invoke-interface {v3, v4}, Lcom/sun/javafx/tk/Toolkit$ImageAccessor;->getImageProperty(Ljavafx/scene/image/Image;)Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/layout/Region;->imageChangeListener:Ljavafx/beans/InvalidationListener;

    invoke-virtual {v3, v4}, Ljavafx/beans/property/ReadOnlyObjectProperty;->removeListener(Ljavafx/beans/InvalidationListener;)V

    .line 700
    return-void
.end method

.method public resize(DD)V
    .locals 13

    .prologue
    .line 1364
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/layout/Region;
    move-wide v2, p1

    .local v2, "width":D
    move-wide/from16 v4, p3

    .local v4, "height":D
    move-object v7, v1

    move-wide v8, v2

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/layout/Region;->setWidth(D)V

    .line 1365
    move-object v7, v1

    move-wide v8, v4

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/layout/Region;->setHeight(D)V

    .line 1366
    invoke-static {}, Lcom/sun/javafx/util/Logging;->getLayoutLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v7

    move-object v6, v7

    .line 1367
    .local v6, "logger":Lsun/util/logging/PlatformLogger;
    move-object v7, v6

    sget-object v8, Lsun/util/logging/PlatformLogger$Level;->FINER:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v7, v8}, Lsun/util/logging/PlatformLogger;->isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1368
    move-object v7, v6

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object v9, v1

    invoke-virtual {v9}, Ljavafx/scene/layout/Region;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " resized to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide v9, v2

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " x "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide v9, v4

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lsun/util/logging/PlatformLogger;->finer(Ljava/lang/String;)V

    .line 1370
    :cond_0
    return-void
.end method

.method public final scaleShapeProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 7

    .prologue
    .line 1269
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Region;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/Region;->scaleShape:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    .line 1270
    move-object v1, v0

    new-instance v2, Ljavafx/scene/layout/Region$8;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Ljavafx/scene/layout/Region$8;-><init>(Ljavafx/scene/layout/Region;Z)V

    iput-object v2, v1, Ljavafx/scene/layout/Region;->scaleShape:Ljavafx/beans/property/BooleanProperty;

    .line 1282
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/Region;->scaleShape:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/Region;
    return-object v0
.end method

.method public final setBackground(Ljavafx/scene/layout/Background;)V
    .locals 4

    .prologue
    .line 617
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Region;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/layout/Background;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/layout/Region;->background:Ljavafx/beans/property/ObjectProperty;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final setBorder(Ljavafx/scene/layout/Border;)V
    .locals 4

    .prologue
    .line 676
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Region;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/layout/Border;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/layout/Region;->border:Ljavafx/beans/property/ObjectProperty;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final setCacheShape(Z)V
    .locals 4

    .prologue
    .line 1323
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Region;
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/layout/Region;->cacheShapeProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->set(Z)V

    return-void
.end method

.method public final setCenterShape(Z)V
    .locals 4

    .prologue
    .line 1295
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Region;
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/layout/Region;->centerShapeProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->set(Z)V

    return-void
.end method

.method protected setHeight(D)V
    .locals 7

    .prologue
    .line 914
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Region;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/layout/Region;->height:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    if-nez v3, :cond_0

    .line 915
    move-object v3, v0

    move-wide v4, v1

    invoke-direct {v3, v4, v5}, Ljavafx/scene/layout/Region;->heightChanged(D)V

    .line 919
    :goto_0
    return-void

    .line 917
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/layout/Region;->height:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/ReadOnlyDoubleWrapper;->set(D)V

    goto :goto_0
.end method

.method public final setMaxHeight(D)V
    .locals 7

    .prologue
    .line 1170
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Region;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/layout/Region;->maxHeight:Ljavafx/beans/property/DoubleProperty;

    if-nez v3, :cond_0

    .line 1171
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/layout/Region;->_maxHeight:D

    .line 1172
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/layout/Region;->requestParentLayout()V

    .line 1176
    :goto_0
    return-void

    .line 1174
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/layout/Region;->maxHeight:Ljavafx/beans/property/DoubleProperty;

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    goto :goto_0
.end method

.method public setMaxSize(DD)V
    .locals 9

    .prologue
    .line 1194
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Region;
    move-wide v1, p1

    .local v1, "maxWidth":D
    move-wide v3, p3

    .local v3, "maxHeight":D
    move-object v5, v0

    move-wide v6, v1

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/layout/Region;->setMaxWidth(D)V

    .line 1195
    move-object v5, v0

    move-wide v6, v3

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/layout/Region;->setMaxHeight(D)V

    .line 1196
    return-void
.end method

.method public final setMaxWidth(D)V
    .locals 7

    .prologue
    .line 1141
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Region;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/layout/Region;->maxWidth:Ljavafx/beans/property/DoubleProperty;

    if-nez v3, :cond_0

    .line 1142
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/layout/Region;->_maxWidth:D

    .line 1143
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/layout/Region;->requestParentLayout()V

    .line 1147
    :goto_0
    return-void

    .line 1145
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/layout/Region;->maxWidth:Ljavafx/beans/property/DoubleProperty;

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    goto :goto_0
.end method

.method public final setMinHeight(D)V
    .locals 7

    .prologue
    .line 1032
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Region;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/layout/Region;->minHeight:Ljavafx/beans/property/DoubleProperty;

    if-nez v3, :cond_0

    .line 1033
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/layout/Region;->_minHeight:D

    .line 1034
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/layout/Region;->requestParentLayout()V

    .line 1038
    :goto_0
    return-void

    .line 1036
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/layout/Region;->minHeight:Ljavafx/beans/property/DoubleProperty;

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    goto :goto_0
.end method

.method public setMinSize(DD)V
    .locals 9

    .prologue
    .line 1056
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Region;
    move-wide v1, p1

    .local v1, "minWidth":D
    move-wide v3, p3

    .local v3, "minHeight":D
    move-object v5, v0

    move-wide v6, v1

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/layout/Region;->setMinWidth(D)V

    .line 1057
    move-object v5, v0

    move-wide v6, v3

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/layout/Region;->setMinHeight(D)V

    .line 1058
    return-void
.end method

.method public final setMinWidth(D)V
    .locals 7

    .prologue
    .line 1002
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Region;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/layout/Region;->minWidth:Ljavafx/beans/property/DoubleProperty;

    if-nez v3, :cond_0

    .line 1003
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/layout/Region;->_minWidth:D

    .line 1004
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/layout/Region;->requestParentLayout()V

    .line 1008
    :goto_0
    return-void

    .line 1006
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/layout/Region;->minWidth:Ljavafx/beans/property/DoubleProperty;

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    goto :goto_0
.end method

.method public final setOpaqueInsets(Ljavafx/geometry/Insets;)V
    .locals 4

    .prologue
    .line 733
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Region;
    move-object v1, p1

    .local v1, "value":Ljavafx/geometry/Insets;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/layout/Region;->opaqueInsetsProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final setPadding(Ljavafx/geometry/Insets;)V
    .locals 4

    .prologue
    .line 559
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Region;
    move-object v1, p1

    .local v1, "value":Ljavafx/geometry/Insets;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/layout/Region;->padding:Ljavafx/beans/property/ObjectProperty;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final setPrefHeight(D)V
    .locals 7

    .prologue
    .line 1097
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Region;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/layout/Region;->prefHeight:Ljavafx/beans/property/DoubleProperty;

    if-nez v3, :cond_0

    .line 1098
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/layout/Region;->_prefHeight:D

    .line 1099
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/layout/Region;->requestParentLayout()V

    .line 1103
    :goto_0
    return-void

    .line 1101
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/layout/Region;->prefHeight:Ljavafx/beans/property/DoubleProperty;

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    goto :goto_0
.end method

.method public setPrefSize(DD)V
    .locals 9

    .prologue
    .line 1121
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Region;
    move-wide v1, p1

    .local v1, "prefWidth":D
    move-wide v3, p3

    .local v3, "prefHeight":D
    move-object v5, v0

    move-wide v6, v1

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/layout/Region;->setPrefWidth(D)V

    .line 1122
    move-object v5, v0

    move-wide v6, v3

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/layout/Region;->setPrefHeight(D)V

    .line 1123
    return-void
.end method

.method public final setPrefWidth(D)V
    .locals 7

    .prologue
    .line 1072
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Region;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/layout/Region;->prefWidth:Ljavafx/beans/property/DoubleProperty;

    if-nez v3, :cond_0

    .line 1073
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/layout/Region;->_prefWidth:D

    .line 1074
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/layout/Region;->requestParentLayout()V

    .line 1078
    :goto_0
    return-void

    .line 1076
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/layout/Region;->prefWidth:Ljavafx/beans/property/DoubleProperty;

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    goto :goto_0
.end method

.method public final setScaleShape(Z)V
    .locals 4

    .prologue
    .line 1266
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Region;
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/layout/Region;->scaleShapeProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->set(Z)V

    return-void
.end method

.method public final setShape(Ljavafx/scene/shape/Shape;)V
    .locals 4

    .prologue
    .line 1213
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Region;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/shape/Shape;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/layout/Region;->shapeProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final setSnapToPixel(Z)V
    .locals 4

    .prologue
    .line 485
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Region;
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/layout/Region;->snapToPixel:Ljavafx/beans/property/BooleanProperty;

    if-nez v2, :cond_1

    .line 486
    move-object v2, v0

    iget-boolean v2, v2, Ljavafx/scene/layout/Region;->_snapToPixel:Z

    move v3, v1

    if-eq v2, v3, :cond_0

    .line 487
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Ljavafx/scene/layout/Region;->_snapToPixel:Z

    .line 488
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/layout/Region;->updateSnappedInsets()V

    .line 489
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/layout/Region;->requestParentLayout()V

    .line 494
    :cond_0
    :goto_0
    return-void

    .line 492
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/layout/Region;->snapToPixel:Ljavafx/beans/property/BooleanProperty;

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->set(Z)V

    goto :goto_0
.end method

.method protected setWidth(D)V
    .locals 7

    .prologue
    .line 855
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Region;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/layout/Region;->width:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    if-nez v3, :cond_0

    .line 856
    move-object v3, v0

    move-wide v4, v1

    invoke-direct {v3, v4, v5}, Ljavafx/scene/layout/Region;->widthChanged(D)V

    .line 860
    :goto_0
    return-void

    .line 858
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/layout/Region;->width:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/ReadOnlyDoubleWrapper;->set(D)V

    goto :goto_0
.end method

.method public final shapeProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/shape/Shape;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1215
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Region;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/Region;->shape:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 1216
    move-object v1, v0

    new-instance v2, Ljavafx/scene/layout/Region$ShapeProperty;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Ljavafx/scene/layout/Region$ShapeProperty;-><init>(Ljavafx/scene/layout/Region;Ljavafx/scene/layout/Region$1;)V

    iput-object v2, v1, Ljavafx/scene/layout/Region;->shape:Ljavafx/beans/property/ObjectProperty;

    .line 1218
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/Region;->shape:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/Region;
    return-object v0
.end method

.method snapPortion(D)D
    .locals 7

    .prologue
    .line 1591
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/layout/Region;
    move-wide v2, p1

    .local v2, "value":D
    move-wide v4, v2

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/layout/Region;->isSnapToPixel()Z

    move-result v6

    invoke-static {v4, v5, v6}, Ljavafx/scene/layout/Region;->snapPortion(DZ)D

    move-result-wide v4

    move-wide v1, v4

    .end local v1    # "this":Ljavafx/scene/layout/Region;
    return-wide v1
.end method

.method protected snapPosition(D)D
    .locals 7

    .prologue
    .line 1587
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/layout/Region;
    move-wide v2, p1

    .local v2, "value":D
    move-wide v4, v2

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/layout/Region;->isSnapToPixel()Z

    move-result v6

    invoke-static {v4, v5, v6}, Ljavafx/scene/layout/Region;->snapPosition(DZ)D

    move-result-wide v4

    move-wide v1, v4

    .end local v1    # "this":Ljavafx/scene/layout/Region;
    return-wide v1
.end method

.method protected snapSize(D)D
    .locals 7

    .prologue
    .line 1577
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/layout/Region;
    move-wide v2, p1

    .local v2, "value":D
    move-wide v4, v2

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/layout/Region;->isSnapToPixel()Z

    move-result v6

    invoke-static {v4, v5, v6}, Ljavafx/scene/layout/Region;->snapSize(DZ)D

    move-result-wide v4

    move-wide v1, v4

    .end local v1    # "this":Ljavafx/scene/layout/Region;
    return-wide v1
.end method

.method protected snapSpace(D)D
    .locals 7

    .prologue
    .line 1567
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/layout/Region;
    move-wide v2, p1

    .local v2, "value":D
    move-wide v4, v2

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/layout/Region;->isSnapToPixel()Z

    move-result v6

    invoke-static {v4, v5, v6}, Ljavafx/scene/layout/Region;->snapSpace(DZ)D

    move-result-wide v4

    move-wide v1, v4

    .end local v1    # "this":Ljavafx/scene/layout/Region;
    return-wide v1
.end method

.method public final snapToPixelProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 7

    .prologue
    .line 499
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Region;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/Region;->snapToPixel:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    .line 500
    move-object v1, v0

    new-instance v2, Ljavafx/scene/layout/Region$1;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v0

    iget-boolean v5, v5, Ljavafx/scene/layout/Region;->_snapToPixel:Z

    invoke-direct {v3, v4, v5}, Ljavafx/scene/layout/Region$1;-><init>(Ljavafx/scene/layout/Region;Z)V

    iput-object v2, v1, Ljavafx/scene/layout/Region;->snapToPixel:Ljavafx/beans/property/BooleanProperty;

    .line 516
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/Region;->snapToPixel:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/Region;
    return-object v0
.end method

.method public final snappedBottomInset()D
    .locals 3

    .prologue
    .line 1614
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Region;
    move-object v1, v0

    iget-wide v1, v1, Ljavafx/scene/layout/Region;->snappedBottomInset:D

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/Region;
    return-wide v0
.end method

.method public final snappedLeftInset()D
    .locals 3

    .prologue
    .line 1625
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Region;
    move-object v1, v0

    iget-wide v1, v1, Ljavafx/scene/layout/Region;->snappedLeftInset:D

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/Region;
    return-wide v0
.end method

.method public final snappedRightInset()D
    .locals 3

    .prologue
    .line 1636
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Region;
    move-object v1, v0

    iget-wide v1, v1, Ljavafx/scene/layout/Region;->snappedRightInset:D

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/Region;
    return-wide v0
.end method

.method public final snappedTopInset()D
    .locals 3

    .prologue
    .line 1603
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Region;
    move-object v1, v0

    iget-wide v1, v1, Ljavafx/scene/layout/Region;->snappedTopInset:D

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/Region;
    return-wide v0
.end method

.method public final widthProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;
    .locals 9

    .prologue
    .line 883
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/layout/Region;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/layout/Region;->width:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    if-nez v2, :cond_0

    .line 884
    move-object v2, v1

    new-instance v3, Ljavafx/scene/layout/Region$6;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/layout/Region;->_width:D

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/layout/Region$6;-><init>(Ljavafx/scene/layout/Region;D)V

    iput-object v3, v2, Ljavafx/scene/layout/Region;->width:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    .line 890
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/layout/Region;->width:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    invoke-virtual {v2}, Ljavafx/beans/property/ReadOnlyDoubleWrapper;->getReadOnlyProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;

    move-result-object v2

    move-object v1, v2

    .end local v1    # "this":Ljavafx/scene/layout/Region;
    return-object v1
.end method

.class public Ljavafx/scene/layout/TilePane;
.super Ljavafx/scene/layout/Pane;
.source "TilePane.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavafx/scene/layout/TilePane$TileSizeProperty;,
        Ljavafx/scene/layout/TilePane$StyleableProperties;
    }
.end annotation


# static fields
.field private static final ALIGNMENT_CONSTRAINT:Ljava/lang/String; = "tilepane-alignment"

.field private static final MARGIN_CONSTRAINT:Ljava/lang/String; = "tilepane-margin"

.field private static final marginAccessor:Ljavafx/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/util/Callback",
            "<",
            "Ljavafx/scene/Node;",
            "Ljavafx/geometry/Insets;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private _tileHeight:D

.field private _tileWidth:D

.field private actualColumns:I

.field private actualRows:I

.field private alignment:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/geometry/Pos;",
            ">;"
        }
    .end annotation
.end field

.field private hgap:Ljavafx/beans/property/DoubleProperty;

.field private orientation:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/geometry/Orientation;",
            ">;"
        }
    .end annotation
.end field

.field private prefColumns:Ljavafx/beans/property/IntegerProperty;

.field private prefRows:Ljavafx/beans/property/IntegerProperty;

.field private prefTileHeight:Ljavafx/beans/property/DoubleProperty;

.field private prefTileWidth:Ljavafx/beans/property/DoubleProperty;

.field private tileAlignment:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/geometry/Pos;",
            ">;"
        }
    .end annotation
.end field

.field private tileHeight:Ljavafx/scene/layout/TilePane$TileSizeProperty;

.field private tileWidth:Ljavafx/scene/layout/TilePane$TileSizeProperty;

.field private vgap:Ljavafx/beans/property/DoubleProperty;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 233
    invoke-static {}, Ljavafx/scene/layout/TilePane$$Lambda$2;->lambdaFactory$()Ljavafx/util/Callback;

    move-result-object v0

    sput-object v0, Ljavafx/scene/layout/TilePane;->marginAccessor:Ljavafx/util/Callback;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 255
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/TilePane;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/layout/Pane;-><init>()V

    .line 248
    move-object v1, v0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    iput-wide v2, v1, Ljavafx/scene/layout/TilePane;->_tileWidth:D

    .line 249
    move-object v1, v0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    iput-wide v2, v1, Ljavafx/scene/layout/TilePane;->_tileHeight:D

    .line 982
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Ljavafx/scene/layout/TilePane;->actualRows:I

    .line 983
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Ljavafx/scene/layout/TilePane;->actualColumns:I

    .line 256
    return-void
.end method

.method public constructor <init>(DD)V
    .locals 9

    .prologue
    .line 275
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/TilePane;
    move-wide v1, p1

    .local v1, "hgap":D
    move-wide v3, p3

    .local v3, "vgap":D
    move-object v5, v0

    invoke-direct {v5}, Ljavafx/scene/layout/Pane;-><init>()V

    .line 248
    move-object v5, v0

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    iput-wide v6, v5, Ljavafx/scene/layout/TilePane;->_tileWidth:D

    .line 249
    move-object v5, v0

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    iput-wide v6, v5, Ljavafx/scene/layout/TilePane;->_tileHeight:D

    .line 982
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Ljavafx/scene/layout/TilePane;->actualRows:I

    .line 983
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Ljavafx/scene/layout/TilePane;->actualColumns:I

    .line 276
    move-object v5, v0

    move-wide v6, v1

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/layout/TilePane;->setHgap(D)V

    .line 277
    move-object v5, v0

    move-wide v6, v3

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/layout/TilePane;->setVgap(D)V

    .line 278
    return-void
.end method

.method public varargs constructor <init>(DD[Ljavafx/scene/Node;)V
    .locals 11

    .prologue
    .line 326
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/layout/TilePane;
    move-wide v2, p1

    .local v2, "hgap":D
    move-wide v4, p3

    .local v4, "vgap":D
    move-object/from16 v6, p5

    .local v6, "children":[Ljavafx/scene/Node;
    move-object v7, v1

    invoke-direct {v7}, Ljavafx/scene/layout/Pane;-><init>()V

    .line 248
    move-object v7, v1

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    iput-wide v8, v7, Ljavafx/scene/layout/TilePane;->_tileWidth:D

    .line 249
    move-object v7, v1

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    iput-wide v8, v7, Ljavafx/scene/layout/TilePane;->_tileHeight:D

    .line 982
    move-object v7, v1

    const/4 v8, 0x0

    iput v8, v7, Ljavafx/scene/layout/TilePane;->actualRows:I

    .line 983
    move-object v7, v1

    const/4 v8, 0x0

    iput v8, v7, Ljavafx/scene/layout/TilePane;->actualColumns:I

    .line 327
    move-object v7, v1

    move-wide v8, v2

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/layout/TilePane;->setHgap(D)V

    .line 328
    move-object v7, v1

    move-wide v8, v4

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/layout/TilePane;->setVgap(D)V

    .line 329
    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/layout/TilePane;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v7

    move-object v8, v6

    invoke-interface {v7, v8}, Ljavafx/collections/ObservableList;->addAll([Ljava/lang/Object;)Z

    move-result v7

    .line 330
    return-void
.end method

.method public constructor <init>(Ljavafx/geometry/Orientation;)V
    .locals 6

    .prologue
    .line 264
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/layout/TilePane;
    move-object v2, p1

    .local v2, "orientation":Ljavafx/geometry/Orientation;
    move-object v3, v1

    invoke-direct {v3}, Ljavafx/scene/layout/Pane;-><init>()V

    .line 248
    move-object v3, v1

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    iput-wide v4, v3, Ljavafx/scene/layout/TilePane;->_tileWidth:D

    .line 249
    move-object v3, v1

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    iput-wide v4, v3, Ljavafx/scene/layout/TilePane;->_tileHeight:D

    .line 982
    move-object v3, v1

    const/4 v4, 0x0

    iput v4, v3, Ljavafx/scene/layout/TilePane;->actualRows:I

    .line 983
    move-object v3, v1

    const/4 v4, 0x0

    iput v4, v3, Ljavafx/scene/layout/TilePane;->actualColumns:I

    .line 265
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljavafx/scene/layout/TilePane;->setOrientation(Ljavafx/geometry/Orientation;)V

    .line 266
    return-void
.end method

.method public constructor <init>(Ljavafx/geometry/Orientation;DD)V
    .locals 10

    .prologue
    .line 288
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/TilePane;
    move-object v1, p1

    .local v1, "orientation":Ljavafx/geometry/Orientation;
    move-wide v2, p2

    .local v2, "hgap":D
    move-wide v4, p4

    .local v4, "vgap":D
    move-object v6, v0

    invoke-direct {v6}, Ljavafx/scene/layout/TilePane;-><init>()V

    .line 289
    move-object v6, v0

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljavafx/scene/layout/TilePane;->setOrientation(Ljavafx/geometry/Orientation;)V

    .line 290
    move-object v6, v0

    move-wide v7, v2

    invoke-virtual {v6, v7, v8}, Ljavafx/scene/layout/TilePane;->setHgap(D)V

    .line 291
    move-object v6, v0

    move-wide v7, v4

    invoke-virtual {v6, v7, v8}, Ljavafx/scene/layout/TilePane;->setVgap(D)V

    .line 292
    return-void
.end method

.method public varargs constructor <init>(Ljavafx/geometry/Orientation;DD[Ljavafx/scene/Node;)V
    .locals 10

    .prologue
    .line 342
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/TilePane;
    move-object v1, p1

    .local v1, "orientation":Ljavafx/geometry/Orientation;
    move-wide v2, p2

    .local v2, "hgap":D
    move-wide v4, p4

    .local v4, "vgap":D
    move-object/from16 v6, p6

    .local v6, "children":[Ljavafx/scene/Node;
    move-object v7, v0

    invoke-direct {v7}, Ljavafx/scene/layout/TilePane;-><init>()V

    .line 343
    move-object v7, v0

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljavafx/scene/layout/TilePane;->setOrientation(Ljavafx/geometry/Orientation;)V

    .line 344
    move-object v7, v0

    move-wide v8, v2

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/layout/TilePane;->setHgap(D)V

    .line 345
    move-object v7, v0

    move-wide v8, v4

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/layout/TilePane;->setVgap(D)V

    .line 346
    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/layout/TilePane;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v7

    move-object v8, v6

    invoke-interface {v7, v8}, Ljavafx/collections/ObservableList;->addAll([Ljava/lang/Object;)Z

    move-result v7

    .line 347
    return-void
.end method

.method public varargs constructor <init>(Ljavafx/geometry/Orientation;[Ljavafx/scene/Node;)V
    .locals 6

    .prologue
    .line 312
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/TilePane;
    move-object v1, p1

    .local v1, "orientation":Ljavafx/geometry/Orientation;
    move-object v2, p2

    .local v2, "children":[Ljavafx/scene/Node;
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/layout/Pane;-><init>()V

    .line 248
    move-object v3, v0

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    iput-wide v4, v3, Ljavafx/scene/layout/TilePane;->_tileWidth:D

    .line 249
    move-object v3, v0

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    iput-wide v4, v3, Ljavafx/scene/layout/TilePane;->_tileHeight:D

    .line 982
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Ljavafx/scene/layout/TilePane;->actualRows:I

    .line 983
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Ljavafx/scene/layout/TilePane;->actualColumns:I

    .line 313
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljavafx/scene/layout/TilePane;->setOrientation(Ljavafx/geometry/Orientation;)V

    .line 314
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/layout/TilePane;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v4, v2

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->addAll([Ljava/lang/Object;)Z

    move-result v3

    .line 315
    return-void
.end method

.method public varargs constructor <init>([Ljavafx/scene/Node;)V
    .locals 6

    .prologue
    .line 300
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/layout/TilePane;
    move-object v2, p1

    .local v2, "children":[Ljavafx/scene/Node;
    move-object v3, v1

    invoke-direct {v3}, Ljavafx/scene/layout/Pane;-><init>()V

    .line 248
    move-object v3, v1

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    iput-wide v4, v3, Ljavafx/scene/layout/TilePane;->_tileWidth:D

    .line 249
    move-object v3, v1

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    iput-wide v4, v3, Ljavafx/scene/layout/TilePane;->_tileHeight:D

    .line 982
    move-object v3, v1

    const/4 v4, 0x0

    iput v4, v3, Ljavafx/scene/layout/TilePane;->actualRows:I

    .line 983
    move-object v3, v1

    const/4 v4, 0x0

    iput v4, v3, Ljavafx/scene/layout/TilePane;->actualColumns:I

    .line 301
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/layout/TilePane;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v4, v2

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->addAll([Ljava/lang/Object;)Z

    move-result v3

    .line 302
    return-void
.end method

.method static synthetic access$1100(Ljavafx/scene/layout/TilePane;)Ljavafx/beans/property/ObjectProperty;
    .locals 2

    .prologue
    .line 183
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/layout/TilePane;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/TilePane;->alignment:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/layout/TilePane;
    return-object v0
.end method

.method static synthetic access$1200(Ljavafx/scene/layout/TilePane;)Ljavafx/beans/property/IntegerProperty;
    .locals 2

    .prologue
    .line 183
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/layout/TilePane;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/TilePane;->prefColumns:Ljavafx/beans/property/IntegerProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/layout/TilePane;
    return-object v0
.end method

.method static synthetic access$1300(Ljavafx/scene/layout/TilePane;)Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 183
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/layout/TilePane;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/TilePane;->hgap:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/layout/TilePane;
    return-object v0
.end method

.method static synthetic access$1400(Ljavafx/scene/layout/TilePane;)Ljavafx/beans/property/IntegerProperty;
    .locals 2

    .prologue
    .line 183
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/layout/TilePane;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/TilePane;->prefRows:Ljavafx/beans/property/IntegerProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/layout/TilePane;
    return-object v0
.end method

.method static synthetic access$1500(Ljavafx/scene/layout/TilePane;)Ljavafx/beans/property/ObjectProperty;
    .locals 2

    .prologue
    .line 183
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/layout/TilePane;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/TilePane;->tileAlignment:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/layout/TilePane;
    return-object v0
.end method

.method static synthetic access$1600(Ljavafx/scene/layout/TilePane;)Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 183
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/layout/TilePane;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/TilePane;->prefTileWidth:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/layout/TilePane;
    return-object v0
.end method

.method static synthetic access$1700(Ljavafx/scene/layout/TilePane;)Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 183
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/layout/TilePane;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/TilePane;->prefTileHeight:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/layout/TilePane;
    return-object v0
.end method

.method static synthetic access$1800(Ljavafx/scene/layout/TilePane;)Ljavafx/beans/property/ObjectProperty;
    .locals 2

    .prologue
    .line 183
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/layout/TilePane;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/TilePane;->orientation:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/layout/TilePane;
    return-object v0
.end method

.method static synthetic access$1900(Ljavafx/scene/layout/TilePane;)Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 183
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/layout/TilePane;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/TilePane;->vgap:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/layout/TilePane;
    return-object v0
.end method

.method static synthetic access$500(Ljavafx/scene/layout/TilePane;)D
    .locals 3

    .prologue
    .line 183
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/layout/TilePane;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/layout/TilePane;->computeTileWidth()D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "x0":Ljavafx/scene/layout/TilePane;
    return-wide v0
.end method

.method static synthetic access$600(Ljavafx/scene/layout/TilePane;)D
    .locals 3

    .prologue
    .line 183
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/layout/TilePane;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/layout/TilePane;->computeTileHeight()D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "x0":Ljavafx/scene/layout/TilePane;
    return-wide v0
.end method

.method static synthetic access$lambda$0(DLjava/lang/Integer;)Ljava/lang/Double;
    .locals 6

    move-wide v0, p0

    move-object v2, p2

    move-wide v3, v0

    move-object v5, v2

    invoke-static {v3, v4, v5}, Ljavafx/scene/layout/TilePane;->lambda$layoutChildren$512(DLjava/lang/Integer;)Ljava/lang/Double;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method static synthetic access$lambda$1(Ljavafx/scene/Node;)Ljavafx/geometry/Insets;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Ljavafx/scene/layout/TilePane;->lambda$static$511(Ljavafx/scene/Node;)Ljavafx/geometry/Insets;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static clearConstraints(Ljavafx/scene/Node;)V
    .locals 3

    .prologue
    .line 240
    move-object v0, p0

    .local v0, "child":Ljavafx/scene/Node;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljavafx/scene/layout/TilePane;->setAlignment(Ljavafx/scene/Node;Ljavafx/geometry/Pos;)V

    .line 241
    move-object v1, v0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljavafx/scene/layout/TilePane;->setMargin(Ljavafx/scene/Node;Ljavafx/geometry/Insets;)V

    .line 242
    return-void
.end method

.method private computeColumns(DD)I
    .locals 13

    .prologue
    .line 881
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/TilePane;
    move-wide v1, p1

    .local v1, "width":D
    move-wide/from16 v3, p3

    .local v3, "tilewidth":D
    const/4 v5, 0x1

    move-wide v6, v1

    move-object v8, v0

    move-object v9, v0

    invoke-virtual {v9}, Ljavafx/scene/layout/TilePane;->getHgap()D

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljavafx/scene/layout/TilePane;->snapSpace(D)D

    move-result-wide v8

    add-double/2addr v6, v8

    move-wide v8, v3

    move-object v10, v0

    move-object v11, v0

    invoke-virtual {v11}, Ljavafx/scene/layout/TilePane;->getHgap()D

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljavafx/scene/layout/TilePane;->snapSpace(D)D

    move-result-wide v10

    add-double/2addr v8, v10

    div-double/2addr v6, v8

    double-to-int v6, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v0, v5

    .end local v0    # "this":Ljavafx/scene/layout/TilePane;
    return v0
.end method

.method private computeContentHeight(ID)D
    .locals 12

    .prologue
    .line 894
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/TilePane;
    move v1, p1

    .local v1, "rows":I
    move-wide v2, p2

    .local v2, "tileheight":D
    move v4, v1

    if-nez v4, :cond_0

    const-wide/16 v4, 0x0

    move-wide v0, v4

    .line 895
    .end local v0    # "this":Ljavafx/scene/layout/TilePane;
    :goto_0
    return-wide v0

    .restart local v0    # "this":Ljavafx/scene/layout/TilePane;
    :cond_0
    move v4, v1

    int-to-double v4, v4

    move-wide v6, v2

    mul-double/2addr v4, v6

    move v6, v1

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    int-to-double v6, v6

    move-object v8, v0

    move-object v9, v0

    invoke-virtual {v9}, Ljavafx/scene/layout/TilePane;->getVgap()D

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljavafx/scene/layout/TilePane;->snapSpace(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    move-wide v0, v4

    goto :goto_0
.end method

.method private computeContentWidth(ID)D
    .locals 12

    .prologue
    .line 889
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/TilePane;
    move v1, p1

    .local v1, "columns":I
    move-wide v2, p2

    .local v2, "tilewidth":D
    move v4, v1

    if-nez v4, :cond_0

    const-wide/16 v4, 0x0

    move-wide v0, v4

    .line 890
    .end local v0    # "this":Ljavafx/scene/layout/TilePane;
    :goto_0
    return-wide v0

    .restart local v0    # "this":Ljavafx/scene/layout/TilePane;
    :cond_0
    move v4, v1

    int-to-double v4, v4

    move-wide v6, v2

    mul-double/2addr v4, v6

    move v6, v1

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    int-to-double v6, v6

    move-object v8, v0

    move-object v9, v0

    invoke-virtual {v9}, Ljavafx/scene/layout/TilePane;->getHgap()D

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljavafx/scene/layout/TilePane;->snapSpace(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    move-wide v0, v4

    goto :goto_0
.end method

.method private computeOther(II)I
    .locals 10

    .prologue
    .line 876
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/layout/TilePane;
    move v2, p1

    .local v2, "numNodes":I
    move v3, p2

    .local v3, "numCells":I
    move v6, v2

    int-to-double v6, v6

    const/4 v8, 0x1

    move v9, v3

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    int-to-double v8, v8

    div-double/2addr v6, v8

    move-wide v4, v6

    .line 877
    .local v4, "other":D
    move-wide v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    move v1, v6

    .end local v1    # "this":Ljavafx/scene/layout/TilePane;
    return v1
.end method

.method private computeRows(DD)I
    .locals 13

    .prologue
    .line 885
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/TilePane;
    move-wide v1, p1

    .local v1, "height":D
    move-wide/from16 v3, p3

    .local v3, "tileheight":D
    const/4 v5, 0x1

    move-wide v6, v1

    move-object v8, v0

    move-object v9, v0

    invoke-virtual {v9}, Ljavafx/scene/layout/TilePane;->getVgap()D

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljavafx/scene/layout/TilePane;->snapSpace(D)D

    move-result-wide v8

    add-double/2addr v6, v8

    move-wide v8, v3

    move-object v10, v0

    move-object v11, v0

    invoke-virtual {v11}, Ljavafx/scene/layout/TilePane;->getVgap()D

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljavafx/scene/layout/TilePane;->snapSpace(D)D

    move-result-wide v10

    add-double/2addr v8, v10

    div-double/2addr v6, v8

    double-to-int v6, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v0, v5

    .end local v0    # "this":Ljavafx/scene/layout/TilePane;
    return v0
.end method

.method private computeTileHeight()D
    .locals 17

    .prologue
    .line 854
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/layout/TilePane;
    move-object v10, v0

    invoke-virtual {v10}, Ljavafx/scene/layout/TilePane;->getManagedChildren()Ljava/util/List;

    move-result-object v10

    move-object v1, v10

    .line 855
    .local v1, "managed":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    move-object v10, v0

    invoke-virtual {v10}, Ljavafx/scene/layout/TilePane;->getPrefTileHeight()D

    move-result-wide v10

    move-wide v2, v10

    .line 856
    .local v2, "preftileheight":D
    move-wide v10, v2

    const-wide/high16 v12, -0x4010000000000000L    # -1.0

    cmpl-double v10, v10, v12

    if-nez v10, :cond_3

    .line 857
    const-wide/high16 v10, -0x4010000000000000L    # -1.0

    move-wide v4, v10

    .line 858
    .local v4, "w":D
    const/4 v10, 0x0

    move v6, v10

    .line 859
    .local v6, "horizBias":Z
    const/4 v10, 0x0

    move v7, v10

    .local v7, "i":I
    move-object v10, v1

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    move v8, v10

    .local v8, "size":I
    :goto_0
    move v10, v7

    move v11, v8

    if-ge v10, v11, :cond_0

    .line 860
    move-object v10, v1

    move v11, v7

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljavafx/scene/Node;

    move-object v9, v10

    .line 861
    .local v9, "child":Ljavafx/scene/Node;
    move-object v10, v9

    invoke-virtual {v10}, Ljavafx/scene/Node;->getContentBias()Ljavafx/geometry/Orientation;

    move-result-object v10

    sget-object v11, Ljavafx/geometry/Orientation;->HORIZONTAL:Ljavafx/geometry/Orientation;

    if-ne v10, v11, :cond_2

    .line 862
    const/4 v10, 0x1

    move v6, v10

    .line 866
    .end local v9    # "child":Ljavafx/scene/Node;
    :cond_0
    move v10, v6

    if-eqz v10, :cond_1

    .line 868
    move-object v10, v0

    move-object v11, v1

    sget-object v12, Ljavafx/scene/layout/TilePane;->marginAccessor:Ljavafx/util/Callback;

    invoke-virtual {v10, v11, v12}, Ljavafx/scene/layout/TilePane;->computeMaxPrefAreaWidth(Ljava/util/List;Ljavafx/util/Callback;)D

    move-result-wide v10

    move-wide v4, v10

    .line 870
    :cond_1
    move-object v10, v0

    move-object v11, v0

    move-object v12, v1

    sget-object v13, Ljavafx/scene/layout/TilePane;->marginAccessor:Ljavafx/util/Callback;

    move-wide v14, v4

    move-object/from16 v16, v0

    invoke-direct/range {v16 .. v16}, Ljavafx/scene/layout/TilePane;->getTileAlignmentInternal()Ljavafx/geometry/Pos;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljavafx/geometry/Pos;->getVpos()Ljavafx/geometry/VPos;

    move-result-object v16

    invoke-virtual/range {v11 .. v16}, Ljavafx/scene/layout/TilePane;->computeMaxPrefAreaHeight(Ljava/util/List;Ljavafx/util/Callback;DLjavafx/geometry/VPos;)D

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljavafx/scene/layout/TilePane;->snapSize(D)D

    move-result-wide v10

    move-wide v0, v10

    .line 872
    .end local v0    # "this":Ljavafx/scene/layout/TilePane;
    .end local v4    # "w":D
    .end local v6    # "horizBias":Z
    .end local v7    # "i":I
    .end local v8    # "size":I
    :goto_1
    return-wide v0

    .line 859
    .restart local v0    # "this":Ljavafx/scene/layout/TilePane;
    .restart local v4    # "w":D
    .restart local v6    # "horizBias":Z
    .restart local v7    # "i":I
    .restart local v8    # "size":I
    .restart local v9    # "child":Ljavafx/scene/Node;
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 872
    .end local v4    # "w":D
    .end local v6    # "horizBias":Z
    .end local v7    # "i":I
    .end local v8    # "size":I
    .end local v9    # "child":Ljavafx/scene/Node;
    :cond_3
    move-object v10, v0

    move-wide v11, v2

    invoke-virtual {v10, v11, v12}, Ljavafx/scene/layout/TilePane;->snapSize(D)D

    move-result-wide v10

    move-wide v0, v10

    goto :goto_1
.end method

.method private computeTileWidth()D
    .locals 17

    .prologue
    .line 832
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/layout/TilePane;
    move-object v10, v0

    invoke-virtual {v10}, Ljavafx/scene/layout/TilePane;->getManagedChildren()Ljava/util/List;

    move-result-object v10

    move-object v1, v10

    .line 833
    .local v1, "managed":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    move-object v10, v0

    invoke-virtual {v10}, Ljavafx/scene/layout/TilePane;->getPrefTileWidth()D

    move-result-wide v10

    move-wide v2, v10

    .line 834
    .local v2, "preftilewidth":D
    move-wide v10, v2

    const-wide/high16 v12, -0x4010000000000000L    # -1.0

    cmpl-double v10, v10, v12

    if-nez v10, :cond_3

    .line 835
    const-wide/high16 v10, -0x4010000000000000L    # -1.0

    move-wide v4, v10

    .line 836
    .local v4, "h":D
    const/4 v10, 0x0

    move v6, v10

    .line 837
    .local v6, "vertBias":Z
    const/4 v10, 0x0

    move v7, v10

    .local v7, "i":I
    move-object v10, v1

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    move v8, v10

    .local v8, "size":I
    :goto_0
    move v10, v7

    move v11, v8

    if-ge v10, v11, :cond_0

    .line 838
    move-object v10, v1

    move v11, v7

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljavafx/scene/Node;

    move-object v9, v10

    .line 839
    .local v9, "child":Ljavafx/scene/Node;
    move-object v10, v9

    invoke-virtual {v10}, Ljavafx/scene/Node;->getContentBias()Ljavafx/geometry/Orientation;

    move-result-object v10

    sget-object v11, Ljavafx/geometry/Orientation;->VERTICAL:Ljavafx/geometry/Orientation;

    if-ne v10, v11, :cond_2

    .line 840
    const/4 v10, 0x1

    move v6, v10

    .line 844
    .end local v9    # "child":Ljavafx/scene/Node;
    :cond_0
    move v10, v6

    if-eqz v10, :cond_1

    .line 846
    move-object v10, v0

    move-object v11, v1

    sget-object v12, Ljavafx/scene/layout/TilePane;->marginAccessor:Ljavafx/util/Callback;

    const-wide/high16 v13, -0x4010000000000000L    # -1.0

    move-object v15, v0

    invoke-direct {v15}, Ljavafx/scene/layout/TilePane;->getTileAlignmentInternal()Ljavafx/geometry/Pos;

    move-result-object v15

    invoke-virtual {v15}, Ljavafx/geometry/Pos;->getVpos()Ljavafx/geometry/VPos;

    move-result-object v15

    invoke-virtual/range {v10 .. v15}, Ljavafx/scene/layout/TilePane;->computeMaxPrefAreaHeight(Ljava/util/List;Ljavafx/util/Callback;DLjavafx/geometry/VPos;)D

    move-result-wide v10

    move-wide v4, v10

    .line 848
    :cond_1
    move-object v10, v0

    move-object v11, v0

    move-object v12, v1

    sget-object v13, Ljavafx/scene/layout/TilePane;->marginAccessor:Ljavafx/util/Callback;

    move-wide v14, v4

    const/16 v16, 0x1

    invoke-virtual/range {v11 .. v16}, Ljavafx/scene/layout/TilePane;->computeMaxPrefAreaWidth(Ljava/util/List;Ljavafx/util/Callback;DZ)D

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljavafx/scene/layout/TilePane;->snapSize(D)D

    move-result-wide v10

    move-wide v0, v10

    .line 850
    .end local v0    # "this":Ljavafx/scene/layout/TilePane;
    .end local v4    # "h":D
    .end local v6    # "vertBias":Z
    .end local v7    # "i":I
    .end local v8    # "size":I
    :goto_1
    return-wide v0

    .line 837
    .restart local v0    # "this":Ljavafx/scene/layout/TilePane;
    .restart local v4    # "h":D
    .restart local v6    # "vertBias":Z
    .restart local v7    # "i":I
    .restart local v8    # "size":I
    .restart local v9    # "child":Ljavafx/scene/Node;
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 850
    .end local v4    # "h":D
    .end local v6    # "vertBias":Z
    .end local v7    # "i":I
    .end local v8    # "size":I
    .end local v9    # "child":Ljavafx/scene/Node;
    :cond_3
    move-object v10, v0

    move-wide v11, v2

    invoke-virtual {v10, v11, v12}, Ljavafx/scene/layout/TilePane;->snapSize(D)D

    move-result-wide v10

    move-wide v0, v10

    goto :goto_1
.end method

.method public static getAlignment(Ljavafx/scene/Node;)Ljavafx/geometry/Pos;
    .locals 3

    .prologue
    .line 210
    move-object v0, p0

    .local v0, "node":Ljavafx/scene/Node;
    move-object v1, v0

    const-string v2, "tilepane-alignment"

    invoke-static {v1, v2}, Ljavafx/scene/layout/TilePane;->getConstraint(Ljavafx/scene/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/geometry/Pos;

    move-object v0, v1

    .end local v0    # "node":Ljavafx/scene/Node;
    return-object v0
.end method

.method private getAlignmentInternal()Ljavafx/geometry/Pos;
    .locals 3

    .prologue
    .line 729
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/TilePane;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/layout/TilePane;->getAlignment()Ljavafx/geometry/Pos;

    move-result-object v2

    move-object v1, v2

    .line 730
    .local v1, "localPos":Ljavafx/geometry/Pos;
    move-object v2, v1

    if-nez v2, :cond_0

    sget-object v2, Ljavafx/geometry/Pos;->TOP_LEFT:Ljavafx/geometry/Pos;

    :goto_0
    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/layout/TilePane;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/layout/TilePane;
    :cond_0
    move-object v2, v1

    goto :goto_0
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
    .line 1173
    # getter for: Ljavafx/scene/layout/TilePane$StyleableProperties;->STYLEABLES:Ljava/util/List;
    invoke-static {}, Ljavafx/scene/layout/TilePane$StyleableProperties;->access$2000()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getMargin(Ljavafx/scene/Node;)Ljavafx/geometry/Insets;
    .locals 3

    .prologue
    .line 230
    move-object v0, p0

    .local v0, "node":Ljavafx/scene/Node;
    move-object v1, v0

    const-string v2, "tilepane-margin"

    invoke-static {v1, v2}, Ljavafx/scene/layout/TilePane;->getConstraint(Ljavafx/scene/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/geometry/Insets;

    move-object v0, v1

    .end local v0    # "node":Ljavafx/scene/Node;
    return-object v0
.end method

.method private getTileAlignmentInternal()Ljavafx/geometry/Pos;
    .locals 3

    .prologue
    .line 769
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/TilePane;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/layout/TilePane;->getTileAlignment()Ljavafx/geometry/Pos;

    move-result-object v2

    move-object v1, v2

    .line 770
    .local v1, "localPos":Ljavafx/geometry/Pos;
    move-object v2, v1

    if-nez v2, :cond_0

    sget-object v2, Ljavafx/geometry/Pos;->CENTER:Ljavafx/geometry/Pos;

    :goto_0
    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/layout/TilePane;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/layout/TilePane;
    :cond_0
    move-object v2, v1

    goto :goto_0
.end method

.method private invalidateTileHeight()V
    .locals 4

    .prologue
    .line 603
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/TilePane;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/TilePane;->tileHeight:Ljavafx/scene/layout/TilePane$TileSizeProperty;

    if-eqz v1, :cond_0

    .line 604
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/TilePane;->tileHeight:Ljavafx/scene/layout/TilePane$TileSizeProperty;

    invoke-virtual {v1}, Ljavafx/scene/layout/TilePane$TileSizeProperty;->invalidate()V

    .line 608
    :goto_0
    return-void

    .line 606
    :cond_0
    move-object v1, v0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    iput-wide v2, v1, Ljavafx/scene/layout/TilePane;->_tileHeight:D

    goto :goto_0
.end method

.method private invalidateTileWidth()V
    .locals 4

    .prologue
    .line 568
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/TilePane;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/TilePane;->tileWidth:Ljavafx/scene/layout/TilePane$TileSizeProperty;

    if-eqz v1, :cond_0

    .line 569
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/TilePane;->tileWidth:Ljavafx/scene/layout/TilePane$TileSizeProperty;

    invoke-virtual {v1}, Ljavafx/scene/layout/TilePane$TileSizeProperty;->invalidate()V

    .line 573
    :goto_0
    return-void

    .line 571
    :cond_0
    move-object v1, v0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    iput-wide v2, v1, Ljavafx/scene/layout/TilePane;->_tileWidth:D

    goto :goto_0
.end method

.method private static synthetic lambda$layoutChildren$512(DLjava/lang/Integer;)Ljava/lang/Double;
    .locals 6

    .prologue
    .line 948
    move-wide v0, p0

    .local v0, "tileWidth":D
    move-object v2, p2

    .local v2, "i":Ljava/lang/Integer;
    move-wide v3, v0

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "tileWidth":D
    return-object v0
.end method

.method private static synthetic lambda$static$511(Ljavafx/scene/Node;)Ljavafx/geometry/Insets;
    .locals 2

    .prologue
    .line 233
    move-object v0, p0

    .local v0, "n":Ljavafx/scene/Node;
    move-object v1, v0

    invoke-static {v1}, Ljavafx/scene/layout/TilePane;->getMargin(Ljavafx/scene/Node;)Ljavafx/geometry/Insets;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "n":Ljavafx/scene/Node;
    return-object v0
.end method

.method public static setAlignment(Ljavafx/scene/Node;Ljavafx/geometry/Pos;)V
    .locals 5

    .prologue
    .line 201
    move-object v0, p0

    .local v0, "node":Ljavafx/scene/Node;
    move-object v1, p1

    .local v1, "value":Ljavafx/geometry/Pos;
    move-object v2, v0

    const-string v3, "tilepane-alignment"

    move-object v4, v1

    invoke-static {v2, v3, v4}, Ljavafx/scene/layout/TilePane;->setConstraint(Ljavafx/scene/Node;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 202
    return-void
.end method

.method public static setMargin(Ljavafx/scene/Node;Ljavafx/geometry/Insets;)V
    .locals 5

    .prologue
    .line 221
    move-object v0, p0

    .local v0, "node":Ljavafx/scene/Node;
    move-object v1, p1

    .local v1, "value":Ljavafx/geometry/Insets;
    move-object v2, v0

    const-string v3, "tilepane-margin"

    move-object v4, v1

    invoke-static {v2, v3, v4}, Ljavafx/scene/layout/TilePane;->setConstraint(Ljavafx/scene/Node;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 222
    return-void
.end method


# virtual methods
.method public final alignmentProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/geometry/Pos;",
            ">;"
        }
    .end annotation

    .prologue
    .line 699
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/TilePane;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/TilePane;->alignment:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 700
    move-object v1, v0

    new-instance v2, Ljavafx/scene/layout/TilePane$10;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    sget-object v5, Ljavafx/geometry/Pos;->TOP_LEFT:Ljavafx/geometry/Pos;

    invoke-direct {v3, v4, v5}, Ljavafx/scene/layout/TilePane$10;-><init>(Ljavafx/scene/layout/TilePane;Ljavafx/geometry/Pos;)V

    iput-object v2, v1, Ljavafx/scene/layout/TilePane;->alignment:Ljavafx/beans/property/ObjectProperty;

    .line 722
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/TilePane;->alignment:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/TilePane;
    return-object v0
.end method

.method protected computeMinHeight(D)D
    .locals 9

    .prologue
    .line 791
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/layout/TilePane;
    move-wide v2, p1

    .local v2, "width":D
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/layout/TilePane;->getContentBias()Ljavafx/geometry/Orientation;

    move-result-object v4

    sget-object v5, Ljavafx/geometry/Orientation;->VERTICAL:Ljavafx/geometry/Orientation;

    if-ne v4, v5, :cond_0

    .line 792
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/layout/TilePane;->getInsets()Ljavafx/geometry/Insets;

    move-result-object v4

    invoke-virtual {v4}, Ljavafx/geometry/Insets;->getTop()D

    move-result-wide v4

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/layout/TilePane;->getTileHeight()D

    move-result-wide v6

    add-double/2addr v4, v6

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/layout/TilePane;->getInsets()Ljavafx/geometry/Insets;

    move-result-object v6

    invoke-virtual {v6}, Ljavafx/geometry/Insets;->getBottom()D

    move-result-wide v6

    add-double/2addr v4, v6

    move-wide v1, v4

    .line 794
    .end local v1    # "this":Ljavafx/scene/layout/TilePane;
    :goto_0
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/layout/TilePane;
    :cond_0
    move-object v4, v1

    move-wide v5, v2

    invoke-virtual {v4, v5, v6}, Ljavafx/scene/layout/TilePane;->computePrefHeight(D)D

    move-result-wide v4

    move-wide v1, v4

    goto :goto_0
.end method

.method protected computeMinWidth(D)D
    .locals 9

    .prologue
    .line 784
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/layout/TilePane;
    move-wide v2, p1

    .local v2, "height":D
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/layout/TilePane;->getContentBias()Ljavafx/geometry/Orientation;

    move-result-object v4

    sget-object v5, Ljavafx/geometry/Orientation;->HORIZONTAL:Ljavafx/geometry/Orientation;

    if-ne v4, v5, :cond_0

    .line 785
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/layout/TilePane;->getInsets()Ljavafx/geometry/Insets;

    move-result-object v4

    invoke-virtual {v4}, Ljavafx/geometry/Insets;->getLeft()D

    move-result-wide v4

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/layout/TilePane;->getTileWidth()D

    move-result-wide v6

    add-double/2addr v4, v6

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/layout/TilePane;->getInsets()Ljavafx/geometry/Insets;

    move-result-object v6

    invoke-virtual {v6}, Ljavafx/geometry/Insets;->getRight()D

    move-result-wide v6

    add-double/2addr v4, v6

    move-wide v1, v4

    .line 787
    .end local v1    # "this":Ljavafx/scene/layout/TilePane;
    :goto_0
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/layout/TilePane;
    :cond_0
    move-object v4, v1

    move-wide v5, v2

    invoke-virtual {v4, v5, v6}, Ljavafx/scene/layout/TilePane;->computePrefWidth(D)D

    move-result-wide v4

    move-wide v1, v4

    goto :goto_0
.end method

.method protected computePrefHeight(D)D
    .locals 15

    .prologue
    .line 815
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/layout/TilePane;
    move-wide/from16 v2, p1

    .local v2, "forWidth":D
    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/layout/TilePane;->getManagedChildren()Ljava/util/List;

    move-result-object v8

    move-object v4, v8

    .line 816
    .local v4, "managed":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/layout/TilePane;->getInsets()Ljavafx/geometry/Insets;

    move-result-object v8

    move-object v5, v8

    .line 817
    .local v5, "insets":Ljavafx/geometry/Insets;
    const/4 v8, 0x0

    move v6, v8

    .line 818
    .local v6, "prefRows":I
    move-wide v8, v2

    const-wide/high16 v10, -0x4010000000000000L    # -1.0

    cmpl-double v8, v8, v10

    if-eqz v8, :cond_0

    .line 821
    move-object v8, v1

    move-wide v9, v2

    move-object v11, v1

    move-object v12, v5

    invoke-virtual {v12}, Ljavafx/geometry/Insets;->getLeft()D

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljavafx/scene/layout/TilePane;->snapSpace(D)D

    move-result-wide v11

    sub-double/2addr v9, v11

    move-object v11, v1

    move-object v12, v5

    invoke-virtual {v12}, Ljavafx/geometry/Insets;->getRight()D

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljavafx/scene/layout/TilePane;->snapSpace(D)D

    move-result-wide v11

    sub-double/2addr v9, v11

    move-object v11, v1

    invoke-virtual {v11}, Ljavafx/scene/layout/TilePane;->getTileWidth()D

    move-result-wide v11

    invoke-direct {v8, v9, v10, v11, v12}, Ljavafx/scene/layout/TilePane;->computeColumns(DD)I

    move-result v8

    move v7, v8

    .line 822
    .local v7, "prefCols":I
    move-object v8, v1

    move-object v9, v4

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    move v10, v7

    invoke-direct {v8, v9, v10}, Ljavafx/scene/layout/TilePane;->computeOther(II)I

    move-result v8

    move v6, v8

    .line 826
    .end local v7    # "prefCols":I
    :goto_0
    move-object v8, v1

    move-object v9, v5

    invoke-virtual {v9}, Ljavafx/geometry/Insets;->getTop()D

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljavafx/scene/layout/TilePane;->snapSpace(D)D

    move-result-wide v8

    move-object v10, v1

    move v11, v6

    move-object v12, v1

    .line 827
    invoke-virtual {v12}, Ljavafx/scene/layout/TilePane;->getTileHeight()D

    move-result-wide v12

    invoke-direct {v10, v11, v12, v13}, Ljavafx/scene/layout/TilePane;->computeContentHeight(ID)D

    move-result-wide v10

    add-double/2addr v8, v10

    move-object v10, v1

    move-object v11, v5

    .line 828
    invoke-virtual {v11}, Ljavafx/geometry/Insets;->getBottom()D

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljavafx/scene/layout/TilePane;->snapSpace(D)D

    move-result-wide v10

    add-double/2addr v8, v10

    move-wide v1, v8

    .end local v1    # "this":Ljavafx/scene/layout/TilePane;
    return-wide v1

    .line 824
    .restart local v1    # "this":Ljavafx/scene/layout/TilePane;
    :cond_0
    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/layout/TilePane;->getOrientation()Ljavafx/geometry/Orientation;

    move-result-object v8

    sget-object v9, Ljavafx/geometry/Orientation;->HORIZONTAL:Ljavafx/geometry/Orientation;

    if-ne v8, v9, :cond_1

    move-object v8, v1

    move-object v9, v4

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/layout/TilePane;->getPrefColumns()I

    move-result v10

    invoke-direct {v8, v9, v10}, Ljavafx/scene/layout/TilePane;->computeOther(II)I

    move-result v8

    :goto_1
    move v6, v8

    goto :goto_0

    :cond_1
    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/layout/TilePane;->getPrefRows()I

    move-result v8

    goto :goto_1
.end method

.method protected computePrefWidth(D)D
    .locals 15

    .prologue
    .line 798
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/layout/TilePane;
    move-wide/from16 v2, p1

    .local v2, "forHeight":D
    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/layout/TilePane;->getManagedChildren()Ljava/util/List;

    move-result-object v8

    move-object v4, v8

    .line 799
    .local v4, "managed":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/layout/TilePane;->getInsets()Ljavafx/geometry/Insets;

    move-result-object v8

    move-object v5, v8

    .line 800
    .local v5, "insets":Ljavafx/geometry/Insets;
    const/4 v8, 0x0

    move v6, v8

    .line 801
    .local v6, "prefCols":I
    move-wide v8, v2

    const-wide/high16 v10, -0x4010000000000000L    # -1.0

    cmpl-double v8, v8, v10

    if-eqz v8, :cond_0

    .line 804
    move-object v8, v1

    move-wide v9, v2

    move-object v11, v1

    move-object v12, v5

    invoke-virtual {v12}, Ljavafx/geometry/Insets;->getTop()D

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljavafx/scene/layout/TilePane;->snapSpace(D)D

    move-result-wide v11

    sub-double/2addr v9, v11

    move-object v11, v1

    move-object v12, v5

    invoke-virtual {v12}, Ljavafx/geometry/Insets;->getBottom()D

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljavafx/scene/layout/TilePane;->snapSpace(D)D

    move-result-wide v11

    sub-double/2addr v9, v11

    move-object v11, v1

    invoke-virtual {v11}, Ljavafx/scene/layout/TilePane;->getTileHeight()D

    move-result-wide v11

    invoke-direct {v8, v9, v10, v11, v12}, Ljavafx/scene/layout/TilePane;->computeRows(DD)I

    move-result v8

    move v7, v8

    .line 805
    .local v7, "prefRows":I
    move-object v8, v1

    move-object v9, v4

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    move v10, v7

    invoke-direct {v8, v9, v10}, Ljavafx/scene/layout/TilePane;->computeOther(II)I

    move-result v8

    move v6, v8

    .line 809
    .end local v7    # "prefRows":I
    :goto_0
    move-object v8, v1

    move-object v9, v5

    invoke-virtual {v9}, Ljavafx/geometry/Insets;->getLeft()D

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljavafx/scene/layout/TilePane;->snapSpace(D)D

    move-result-wide v8

    move-object v10, v1

    move v11, v6

    move-object v12, v1

    .line 810
    invoke-virtual {v12}, Ljavafx/scene/layout/TilePane;->getTileWidth()D

    move-result-wide v12

    invoke-direct {v10, v11, v12, v13}, Ljavafx/scene/layout/TilePane;->computeContentWidth(ID)D

    move-result-wide v10

    add-double/2addr v8, v10

    move-object v10, v1

    move-object v11, v5

    .line 811
    invoke-virtual {v11}, Ljavafx/geometry/Insets;->getRight()D

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljavafx/scene/layout/TilePane;->snapSpace(D)D

    move-result-wide v10

    add-double/2addr v8, v10

    move-wide v1, v8

    .end local v1    # "this":Ljavafx/scene/layout/TilePane;
    return-wide v1

    .line 807
    .restart local v1    # "this":Ljavafx/scene/layout/TilePane;
    :cond_0
    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/layout/TilePane;->getOrientation()Ljavafx/geometry/Orientation;

    move-result-object v8

    sget-object v9, Ljavafx/geometry/Orientation;->HORIZONTAL:Ljavafx/geometry/Orientation;

    if-ne v8, v9, :cond_1

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/layout/TilePane;->getPrefColumns()I

    move-result v8

    :goto_1
    move v6, v8

    goto :goto_0

    :cond_1
    move-object v8, v1

    move-object v9, v4

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/layout/TilePane;->getPrefRows()I

    move-result v10

    invoke-direct {v8, v9, v10}, Ljavafx/scene/layout/TilePane;->computeOther(II)I

    move-result v8

    goto :goto_1
.end method

.method public final getAlignment()Ljavafx/geometry/Pos;
    .locals 2

    .prologue
    .line 727
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/TilePane;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/TilePane;->alignment:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    sget-object v1, Ljavafx/geometry/Pos;->TOP_LEFT:Ljavafx/geometry/Pos;

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/TilePane;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/layout/TilePane;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/TilePane;->alignment:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/geometry/Pos;

    goto :goto_0
.end method

.method public getContentBias()Ljavafx/geometry/Orientation;
    .locals 2

    .prologue
    .line 774
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/TilePane;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/layout/TilePane;->getOrientation()Ljavafx/geometry/Orientation;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/TilePane;
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
    .line 1185
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/TilePane;
    invoke-static {}, Ljavafx/scene/layout/TilePane;->getClassCssMetaData()Ljava/util/List;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/TilePane;
    return-object v0
.end method

.method public final getHgap()D
    .locals 4

    .prologue
    .line 652
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/layout/TilePane;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/layout/TilePane;->hgap:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/layout/TilePane;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/layout/TilePane;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/layout/TilePane;->hgap:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getOrientation()Ljavafx/geometry/Orientation;
    .locals 2

    .prologue
    .line 385
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/TilePane;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/TilePane;->orientation:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    sget-object v1, Ljavafx/geometry/Orientation;->HORIZONTAL:Ljavafx/geometry/Orientation;

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/TilePane;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/layout/TilePane;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/TilePane;->orientation:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/geometry/Orientation;

    goto :goto_0
.end method

.method public final getPrefColumns()I
    .locals 2

    .prologue
    .line 468
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/TilePane;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/TilePane;->prefColumns:Ljavafx/beans/property/IntegerProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x5

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/TilePane;
    return v0

    .restart local v0    # "this":Ljavafx/scene/layout/TilePane;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/TilePane;->prefColumns:Ljavafx/beans/property/IntegerProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/IntegerProperty;->get()I

    move-result v1

    goto :goto_0
.end method

.method public final getPrefRows()I
    .locals 2

    .prologue
    .line 427
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/TilePane;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/TilePane;->prefRows:Ljavafx/beans/property/IntegerProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x5

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/TilePane;
    return v0

    .restart local v0    # "this":Ljavafx/scene/layout/TilePane;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/TilePane;->prefRows:Ljavafx/beans/property/IntegerProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/IntegerProperty;->get()I

    move-result v1

    goto :goto_0
.end method

.method public final getPrefTileHeight()D
    .locals 4

    .prologue
    .line 548
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/layout/TilePane;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/layout/TilePane;->prefTileHeight:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/layout/TilePane;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/layout/TilePane;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/layout/TilePane;->prefTileHeight:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getPrefTileWidth()D
    .locals 4

    .prologue
    .line 508
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/layout/TilePane;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/layout/TilePane;->prefTileWidth:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/layout/TilePane;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/layout/TilePane;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/layout/TilePane;->prefTileWidth:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getTileAlignment()Ljavafx/geometry/Pos;
    .locals 2

    .prologue
    .line 767
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/TilePane;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/TilePane;->tileAlignment:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    sget-object v1, Ljavafx/geometry/Pos;->CENTER:Ljavafx/geometry/Pos;

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/TilePane;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/layout/TilePane;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/TilePane;->tileAlignment:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/geometry/Pos;

    goto :goto_0
.end method

.method public final getTileHeight()D
    .locals 6

    .prologue
    .line 611
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/layout/TilePane;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/layout/TilePane;->tileHeight:Ljavafx/scene/layout/TilePane$TileSizeProperty;

    if-eqz v2, :cond_0

    .line 612
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/layout/TilePane;->tileHeight:Ljavafx/scene/layout/TilePane$TileSizeProperty;

    invoke-virtual {v2}, Ljavafx/scene/layout/TilePane$TileSizeProperty;->get()D

    move-result-wide v2

    move-wide v1, v2

    .line 617
    .end local v1    # "this":Ljavafx/scene/layout/TilePane;
    :goto_0
    return-wide v1

    .line 614
    .restart local v1    # "this":Ljavafx/scene/layout/TilePane;
    :cond_0
    move-object v2, v1

    iget-wide v2, v2, Ljavafx/scene/layout/TilePane;->_tileHeight:D

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_1

    .line 615
    move-object v2, v1

    move-object v3, v1

    invoke-direct {v3}, Ljavafx/scene/layout/TilePane;->computeTileHeight()D

    move-result-wide v3

    iput-wide v3, v2, Ljavafx/scene/layout/TilePane;->_tileHeight:D

    .line 617
    :cond_1
    move-object v2, v1

    iget-wide v2, v2, Ljavafx/scene/layout/TilePane;->_tileHeight:D

    move-wide v1, v2

    goto :goto_0
.end method

.method public final getTileWidth()D
    .locals 6

    .prologue
    .line 576
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/layout/TilePane;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/layout/TilePane;->tileWidth:Ljavafx/scene/layout/TilePane$TileSizeProperty;

    if-eqz v2, :cond_0

    .line 577
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/layout/TilePane;->tileWidth:Ljavafx/scene/layout/TilePane$TileSizeProperty;

    invoke-virtual {v2}, Ljavafx/scene/layout/TilePane$TileSizeProperty;->get()D

    move-result-wide v2

    move-wide v1, v2

    .line 582
    .end local v1    # "this":Ljavafx/scene/layout/TilePane;
    :goto_0
    return-wide v1

    .line 579
    .restart local v1    # "this":Ljavafx/scene/layout/TilePane;
    :cond_0
    move-object v2, v1

    iget-wide v2, v2, Ljavafx/scene/layout/TilePane;->_tileWidth:D

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_1

    .line 580
    move-object v2, v1

    move-object v3, v1

    invoke-direct {v3}, Ljavafx/scene/layout/TilePane;->computeTileWidth()D

    move-result-wide v3

    iput-wide v3, v2, Ljavafx/scene/layout/TilePane;->_tileWidth:D

    .line 582
    :cond_1
    move-object v2, v1

    iget-wide v2, v2, Ljavafx/scene/layout/TilePane;->_tileWidth:D

    move-wide v1, v2

    goto :goto_0
.end method

.method public final getVgap()D
    .locals 4

    .prologue
    .line 686
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/layout/TilePane;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/layout/TilePane;->vgap:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/layout/TilePane;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/layout/TilePane;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/layout/TilePane;->vgap:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final hgapProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 6

    .prologue
    .line 624
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/TilePane;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/TilePane;->hgap:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    .line 625
    move-object v1, v0

    new-instance v2, Ljavafx/scene/layout/TilePane$8;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/layout/TilePane$8;-><init>(Ljavafx/scene/layout/TilePane;)V

    iput-object v2, v1, Ljavafx/scene/layout/TilePane;->hgap:Ljavafx/beans/property/DoubleProperty;

    .line 647
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/TilePane;->hgap:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/TilePane;
    return-object v0
.end method

.method protected layoutChildren()V
    .locals 71

    .prologue
    .line 899
    move-object/from16 v2, p0

    .local v2, "this":Ljavafx/scene/layout/TilePane;
    move-object/from16 v56, v2

    invoke-virtual/range {v56 .. v56}, Ljavafx/scene/layout/TilePane;->getManagedChildren()Ljava/util/List;

    move-result-object v56

    move-object/from16 v3, v56

    .line 900
    .local v3, "managed":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    move-object/from16 v56, v2

    invoke-direct/range {v56 .. v56}, Ljavafx/scene/layout/TilePane;->getAlignmentInternal()Ljavafx/geometry/Pos;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljavafx/geometry/Pos;->getHpos()Ljavafx/geometry/HPos;

    move-result-object v56

    move-object/from16 v4, v56

    .line 901
    .local v4, "hpos":Ljavafx/geometry/HPos;
    move-object/from16 v56, v2

    invoke-direct/range {v56 .. v56}, Ljavafx/scene/layout/TilePane;->getAlignmentInternal()Ljavafx/geometry/Pos;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljavafx/geometry/Pos;->getVpos()Ljavafx/geometry/VPos;

    move-result-object v56

    move-object/from16 v5, v56

    .line 902
    .local v5, "vpos":Ljavafx/geometry/VPos;
    move-object/from16 v56, v2

    invoke-virtual/range {v56 .. v56}, Ljavafx/scene/layout/TilePane;->getWidth()D

    move-result-wide v56

    move-wide/from16 v6, v56

    .line 903
    .local v6, "width":D
    move-object/from16 v56, v2

    invoke-virtual/range {v56 .. v56}, Ljavafx/scene/layout/TilePane;->getHeight()D

    move-result-wide v56

    move-wide/from16 v8, v56

    .line 904
    .local v8, "height":D
    move-object/from16 v56, v2

    move-object/from16 v57, v2

    invoke-virtual/range {v57 .. v57}, Ljavafx/scene/layout/TilePane;->getInsets()Ljavafx/geometry/Insets;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljavafx/geometry/Insets;->getTop()D

    move-result-wide v57

    invoke-virtual/range {v56 .. v58}, Ljavafx/scene/layout/TilePane;->snapSpace(D)D

    move-result-wide v56

    move-wide/from16 v10, v56

    .line 905
    .local v10, "top":D
    move-object/from16 v56, v2

    move-object/from16 v57, v2

    invoke-virtual/range {v57 .. v57}, Ljavafx/scene/layout/TilePane;->getInsets()Ljavafx/geometry/Insets;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljavafx/geometry/Insets;->getLeft()D

    move-result-wide v57

    invoke-virtual/range {v56 .. v58}, Ljavafx/scene/layout/TilePane;->snapSpace(D)D

    move-result-wide v56

    move-wide/from16 v12, v56

    .line 906
    .local v12, "left":D
    move-object/from16 v56, v2

    move-object/from16 v57, v2

    invoke-virtual/range {v57 .. v57}, Ljavafx/scene/layout/TilePane;->getInsets()Ljavafx/geometry/Insets;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljavafx/geometry/Insets;->getBottom()D

    move-result-wide v57

    invoke-virtual/range {v56 .. v58}, Ljavafx/scene/layout/TilePane;->snapSpace(D)D

    move-result-wide v56

    move-wide/from16 v14, v56

    .line 907
    .local v14, "bottom":D
    move-object/from16 v56, v2

    move-object/from16 v57, v2

    invoke-virtual/range {v57 .. v57}, Ljavafx/scene/layout/TilePane;->getInsets()Ljavafx/geometry/Insets;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljavafx/geometry/Insets;->getRight()D

    move-result-wide v57

    invoke-virtual/range {v56 .. v58}, Ljavafx/scene/layout/TilePane;->snapSpace(D)D

    move-result-wide v56

    move-wide/from16 v16, v56

    .line 908
    .local v16, "right":D
    move-object/from16 v56, v2

    move-object/from16 v57, v2

    invoke-virtual/range {v57 .. v57}, Ljavafx/scene/layout/TilePane;->getVgap()D

    move-result-wide v57

    invoke-virtual/range {v56 .. v58}, Ljavafx/scene/layout/TilePane;->snapSpace(D)D

    move-result-wide v56

    move-wide/from16 v18, v56

    .line 909
    .local v18, "vgap":D
    move-object/from16 v56, v2

    move-object/from16 v57, v2

    invoke-virtual/range {v57 .. v57}, Ljavafx/scene/layout/TilePane;->getHgap()D

    move-result-wide v57

    invoke-virtual/range {v56 .. v58}, Ljavafx/scene/layout/TilePane;->snapSpace(D)D

    move-result-wide v56

    move-wide/from16 v20, v56

    .line 910
    .local v20, "hgap":D
    move-wide/from16 v56, v6

    move-wide/from16 v58, v12

    sub-double v56, v56, v58

    move-wide/from16 v58, v16

    sub-double v56, v56, v58

    move-wide/from16 v22, v56

    .line 911
    .local v22, "insideWidth":D
    move-wide/from16 v56, v8

    move-wide/from16 v58, v10

    sub-double v56, v56, v58

    move-wide/from16 v58, v14

    sub-double v56, v56, v58

    move-wide/from16 v24, v56

    .line 913
    .local v24, "insideHeight":D
    move-object/from16 v56, v2

    invoke-virtual/range {v56 .. v56}, Ljavafx/scene/layout/TilePane;->getTileWidth()D

    move-result-wide v56

    move-wide/from16 v58, v22

    cmpl-double v56, v56, v58

    if-lez v56, :cond_1

    move-wide/from16 v56, v22

    :goto_0
    move-wide/from16 v26, v56

    .line 914
    .local v26, "tileWidth":D
    move-object/from16 v56, v2

    invoke-virtual/range {v56 .. v56}, Ljavafx/scene/layout/TilePane;->getTileHeight()D

    move-result-wide v56

    move-wide/from16 v58, v24

    cmpl-double v56, v56, v58

    if-lez v56, :cond_2

    move-wide/from16 v56, v24

    :goto_1
    move-wide/from16 v28, v56

    .line 916
    .local v28, "tileHeight":D
    const/16 v56, 0x0

    move/from16 v30, v56

    .line 917
    .local v30, "lastRowRemainder":I
    const/16 v56, 0x0

    move/from16 v31, v56

    .line 918
    .local v31, "lastColumnRemainder":I
    move-object/from16 v56, v2

    invoke-virtual/range {v56 .. v56}, Ljavafx/scene/layout/TilePane;->getOrientation()Ljavafx/geometry/Orientation;

    move-result-object v56

    sget-object v57, Ljavafx/geometry/Orientation;->HORIZONTAL:Ljavafx/geometry/Orientation;

    move-object/from16 v0, v56

    move-object/from16 v1, v57

    if-ne v0, v1, :cond_4

    .line 919
    move-object/from16 v56, v2

    move-object/from16 v57, v2

    move-wide/from16 v58, v22

    move-wide/from16 v60, v26

    invoke-direct/range {v57 .. v61}, Ljavafx/scene/layout/TilePane;->computeColumns(DD)I

    move-result v57

    move/from16 v0, v57

    move-object/from16 v1, v56

    iput v0, v1, Ljavafx/scene/layout/TilePane;->actualColumns:I

    .line 920
    move-object/from16 v56, v2

    move-object/from16 v57, v2

    move-object/from16 v58, v3

    invoke-interface/range {v58 .. v58}, Ljava/util/List;->size()I

    move-result v58

    move-object/from16 v59, v2

    move-object/from16 v0, v59

    iget v0, v0, Ljavafx/scene/layout/TilePane;->actualColumns:I

    move/from16 v59, v0

    invoke-direct/range {v57 .. v59}, Ljavafx/scene/layout/TilePane;->computeOther(II)I

    move-result v57

    move/from16 v0, v57

    move-object/from16 v1, v56

    iput v0, v1, Ljavafx/scene/layout/TilePane;->actualRows:I

    .line 922
    move-object/from16 v56, v4

    sget-object v57, Ljavafx/geometry/HPos;->LEFT:Ljavafx/geometry/HPos;

    move-object/from16 v0, v56

    move-object/from16 v1, v57

    if-eq v0, v1, :cond_3

    move-object/from16 v56, v2

    move-object/from16 v0, v56

    iget v0, v0, Ljavafx/scene/layout/TilePane;->actualColumns:I

    move/from16 v56, v0

    move-object/from16 v57, v2

    move-object/from16 v0, v57

    iget v0, v0, Ljavafx/scene/layout/TilePane;->actualColumns:I

    move/from16 v57, v0

    move-object/from16 v58, v2

    move-object/from16 v0, v58

    iget v0, v0, Ljavafx/scene/layout/TilePane;->actualRows:I

    move/from16 v58, v0

    mul-int v57, v57, v58

    move-object/from16 v58, v3

    .line 923
    invoke-interface/range {v58 .. v58}, Ljava/util/List;->size()I

    move-result v58

    sub-int v57, v57, v58

    sub-int v56, v56, v57

    :goto_2
    move/from16 v30, v56

    .line 932
    :goto_3
    move-wide/from16 v56, v12

    move-wide/from16 v58, v22

    move-object/from16 v60, v2

    move-object/from16 v61, v2

    move-object/from16 v0, v61

    iget v0, v0, Ljavafx/scene/layout/TilePane;->actualColumns:I

    move/from16 v61, v0

    move-wide/from16 v62, v26

    .line 933
    invoke-direct/range {v60 .. v63}, Ljavafx/scene/layout/TilePane;->computeContentWidth(ID)D

    move-result-wide v60

    move-object/from16 v62, v4

    .line 932
    invoke-static/range {v58 .. v62}, Ljavafx/scene/layout/TilePane;->computeXOffset(DDLjavafx/geometry/HPos;)D

    move-result-wide v58

    add-double v56, v56, v58

    move-wide/from16 v32, v56

    .line 935
    .local v32, "rowX":D
    move-wide/from16 v56, v10

    move-wide/from16 v58, v24

    move-object/from16 v60, v2

    move-object/from16 v61, v2

    move-object/from16 v0, v61

    iget v0, v0, Ljavafx/scene/layout/TilePane;->actualRows:I

    move/from16 v61, v0

    move-wide/from16 v62, v28

    .line 936
    invoke-direct/range {v60 .. v63}, Ljavafx/scene/layout/TilePane;->computeContentHeight(ID)D

    move-result-wide v60

    move-object/from16 v62, v5

    .line 935
    invoke-static/range {v58 .. v62}, Ljavafx/scene/layout/TilePane;->computeYOffset(DDLjavafx/geometry/VPos;)D

    move-result-wide v58

    add-double v56, v56, v58

    move-wide/from16 v34, v56

    .line 939
    .local v34, "columnY":D
    move/from16 v56, v30

    if-lez v56, :cond_6

    move-wide/from16 v56, v12

    move-wide/from16 v58, v22

    move-object/from16 v60, v2

    move/from16 v61, v30

    move-wide/from16 v62, v26

    .line 941
    invoke-direct/range {v60 .. v63}, Ljavafx/scene/layout/TilePane;->computeContentWidth(ID)D

    move-result-wide v60

    move-object/from16 v62, v4

    .line 940
    invoke-static/range {v58 .. v62}, Ljavafx/scene/layout/TilePane;->computeXOffset(DDLjavafx/geometry/HPos;)D

    move-result-wide v58

    add-double v56, v56, v58

    :goto_4
    move-wide/from16 v36, v56

    .line 943
    .local v36, "lastRowX":D
    move/from16 v56, v31

    if-lez v56, :cond_7

    move-wide/from16 v56, v10

    move-wide/from16 v58, v24

    move-object/from16 v60, v2

    move/from16 v61, v31

    move-wide/from16 v62, v28

    .line 945
    invoke-direct/range {v60 .. v63}, Ljavafx/scene/layout/TilePane;->computeContentHeight(ID)D

    move-result-wide v60

    move-object/from16 v62, v5

    .line 944
    invoke-static/range {v58 .. v62}, Ljavafx/scene/layout/TilePane;->computeYOffset(DDLjavafx/geometry/VPos;)D

    move-result-wide v58

    add-double v56, v56, v58

    :goto_5
    move-wide/from16 v38, v56

    .line 947
    .local v38, "lastColumnY":D
    move-object/from16 v56, v2

    invoke-direct/range {v56 .. v56}, Ljavafx/scene/layout/TilePane;->getTileAlignmentInternal()Ljavafx/geometry/Pos;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljavafx/geometry/Pos;->getVpos()Ljavafx/geometry/VPos;

    move-result-object v56

    sget-object v57, Ljavafx/geometry/VPos;->BASELINE:Ljavafx/geometry/VPos;

    move-object/from16 v0, v56

    move-object/from16 v1, v57

    if-ne v0, v1, :cond_8

    move-object/from16 v56, v2

    move-object/from16 v57, v3

    sget-object v58, Ljavafx/scene/layout/TilePane;->marginAccessor:Ljavafx/util/Callback;

    move-wide/from16 v59, v26

    invoke-static/range {v59 .. v60}, Ljavafx/scene/layout/TilePane$$Lambda$1;->lambdaFactory$(D)Ljava/util/function/Function;

    move-result-object v59

    move-wide/from16 v60, v28

    const/16 v62, 0x0

    .line 948
    invoke-virtual/range {v56 .. v62}, Ljavafx/scene/layout/TilePane;->getAreaBaselineOffset(Ljava/util/List;Ljavafx/util/Callback;Ljava/util/function/Function;DZ)D

    move-result-wide v56

    :goto_6
    move-wide/from16 v40, v56

    .line 950
    .local v40, "baselineOffset":D
    const/16 v56, 0x0

    move/from16 v42, v56

    .line 951
    .local v42, "r":I
    const/16 v56, 0x0

    move/from16 v43, v56

    .line 952
    .local v43, "c":I
    const/16 v56, 0x0

    move/from16 v44, v56

    .local v44, "i":I
    move-object/from16 v56, v3

    invoke-interface/range {v56 .. v56}, Ljava/util/List;->size()I

    move-result v56

    move/from16 v45, v56

    .local v45, "size":I
    :goto_7
    move/from16 v56, v44

    move/from16 v57, v45

    move/from16 v0, v56

    move/from16 v1, v57

    if-ge v0, v1, :cond_e

    .line 953
    move-object/from16 v56, v3

    move/from16 v57, v44

    invoke-interface/range {v56 .. v57}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v56

    check-cast v56, Ljavafx/scene/Node;

    move-object/from16 v46, v56

    .line 954
    .local v46, "child":Ljavafx/scene/Node;
    move/from16 v56, v42

    move-object/from16 v57, v2

    move-object/from16 v0, v57

    iget v0, v0, Ljavafx/scene/layout/TilePane;->actualRows:I

    move/from16 v57, v0

    const/16 v58, 0x1

    add-int/lit8 v57, v57, -0x1

    move/from16 v0, v56

    move/from16 v1, v57

    if-ne v0, v1, :cond_9

    move-wide/from16 v56, v36

    :goto_8
    move-wide/from16 v47, v56

    .line 955
    .local v47, "xoffset":D
    move/from16 v56, v43

    move-object/from16 v57, v2

    move-object/from16 v0, v57

    iget v0, v0, Ljavafx/scene/layout/TilePane;->actualColumns:I

    move/from16 v57, v0

    const/16 v58, 0x1

    add-int/lit8 v57, v57, -0x1

    move/from16 v0, v56

    move/from16 v1, v57

    if-ne v0, v1, :cond_a

    move-wide/from16 v56, v38

    :goto_9
    move-wide/from16 v49, v56

    .line 957
    .local v49, "yoffset":D
    move-wide/from16 v56, v47

    move/from16 v58, v43

    move/from16 v0, v58

    int-to-double v0, v0

    move-wide/from16 v58, v0

    move-wide/from16 v60, v26

    move-wide/from16 v62, v20

    add-double v60, v60, v62

    mul-double v58, v58, v60

    add-double v56, v56, v58

    move-wide/from16 v51, v56

    .line 958
    .local v51, "tileX":D
    move-wide/from16 v56, v49

    move/from16 v58, v42

    move/from16 v0, v58

    int-to-double v0, v0

    move-wide/from16 v58, v0

    move-wide/from16 v60, v28

    move-wide/from16 v62, v18

    add-double v60, v60, v62

    mul-double v58, v58, v60

    add-double v56, v56, v58

    move-wide/from16 v53, v56

    .line 960
    .local v53, "tileY":D
    move-object/from16 v56, v46

    invoke-static/range {v56 .. v56}, Ljavafx/scene/layout/TilePane;->getAlignment(Ljavafx/scene/Node;)Ljavafx/geometry/Pos;

    move-result-object v56

    move-object/from16 v55, v56

    .line 962
    .local v55, "childAlignment":Ljavafx/geometry/Pos;
    move-object/from16 v56, v2

    move-object/from16 v57, v46

    move-wide/from16 v58, v51

    move-wide/from16 v60, v53

    move-wide/from16 v62, v26

    move-wide/from16 v64, v28

    move-wide/from16 v66, v40

    move-object/from16 v68, v46

    .line 963
    invoke-static/range {v68 .. v68}, Ljavafx/scene/layout/TilePane;->getMargin(Ljavafx/scene/Node;)Ljavafx/geometry/Insets;

    move-result-object v68

    move-object/from16 v69, v55

    if-eqz v69, :cond_b

    move-object/from16 v69, v55

    .line 964
    invoke-virtual/range {v69 .. v69}, Ljavafx/geometry/Pos;->getHpos()Ljavafx/geometry/HPos;

    move-result-object v69

    :goto_a
    move-object/from16 v70, v55

    if-eqz v70, :cond_c

    move-object/from16 v70, v55

    .line 965
    invoke-virtual/range {v70 .. v70}, Ljavafx/geometry/Pos;->getVpos()Ljavafx/geometry/VPos;

    move-result-object v70

    .line 962
    :goto_b
    invoke-virtual/range {v56 .. v70}, Ljavafx/scene/layout/TilePane;->layoutInArea(Ljavafx/scene/Node;DDDDDLjavafx/geometry/Insets;Ljavafx/geometry/HPos;Ljavafx/geometry/VPos;)V

    .line 967
    move-object/from16 v56, v2

    invoke-virtual/range {v56 .. v56}, Ljavafx/scene/layout/TilePane;->getOrientation()Ljavafx/geometry/Orientation;

    move-result-object v56

    sget-object v57, Ljavafx/geometry/Orientation;->HORIZONTAL:Ljavafx/geometry/Orientation;

    move-object/from16 v0, v56

    move-object/from16 v1, v57

    if-ne v0, v1, :cond_d

    .line 968
    add-int/lit8 v43, v43, 0x1

    move/from16 v56, v43

    move-object/from16 v57, v2

    move-object/from16 v0, v57

    iget v0, v0, Ljavafx/scene/layout/TilePane;->actualColumns:I

    move/from16 v57, v0

    move/from16 v0, v56

    move/from16 v1, v57

    if-ne v0, v1, :cond_0

    .line 969
    const/16 v56, 0x0

    move/from16 v43, v56

    .line 970
    add-int/lit8 v42, v42, 0x1

    .line 952
    :cond_0
    :goto_c
    add-int/lit8 v44, v44, 0x1

    goto/16 :goto_7

    .line 913
    .end local v26    # "tileWidth":D
    .end local v28    # "tileHeight":D
    .end local v30    # "lastRowRemainder":I
    .end local v31    # "lastColumnRemainder":I
    .end local v32    # "rowX":D
    .end local v34    # "columnY":D
    .end local v36    # "lastRowX":D
    .end local v38    # "lastColumnY":D
    .end local v40    # "baselineOffset":D
    .end local v42    # "r":I
    .end local v43    # "c":I
    .end local v44    # "i":I
    .end local v45    # "size":I
    .end local v46    # "child":Ljavafx/scene/Node;
    .end local v47    # "xoffset":D
    .end local v49    # "yoffset":D
    .end local v51    # "tileX":D
    .end local v53    # "tileY":D
    .end local v55    # "childAlignment":Ljavafx/geometry/Pos;
    :cond_1
    move-object/from16 v56, v2

    invoke-virtual/range {v56 .. v56}, Ljavafx/scene/layout/TilePane;->getTileWidth()D

    move-result-wide v56

    goto/16 :goto_0

    .line 914
    .restart local v26    # "tileWidth":D
    :cond_2
    move-object/from16 v56, v2

    invoke-virtual/range {v56 .. v56}, Ljavafx/scene/layout/TilePane;->getTileHeight()D

    move-result-wide v56

    goto/16 :goto_1

    .line 923
    .restart local v28    # "tileHeight":D
    .restart local v30    # "lastRowRemainder":I
    .restart local v31    # "lastColumnRemainder":I
    :cond_3
    const/16 v56, 0x0

    goto/16 :goto_2

    .line 926
    :cond_4
    move-object/from16 v56, v2

    move-object/from16 v57, v2

    move-wide/from16 v58, v24

    move-wide/from16 v60, v28

    invoke-direct/range {v57 .. v61}, Ljavafx/scene/layout/TilePane;->computeRows(DD)I

    move-result v57

    move/from16 v0, v57

    move-object/from16 v1, v56

    iput v0, v1, Ljavafx/scene/layout/TilePane;->actualRows:I

    .line 927
    move-object/from16 v56, v2

    move-object/from16 v57, v2

    move-object/from16 v58, v3

    invoke-interface/range {v58 .. v58}, Ljava/util/List;->size()I

    move-result v58

    move-object/from16 v59, v2

    move-object/from16 v0, v59

    iget v0, v0, Ljavafx/scene/layout/TilePane;->actualRows:I

    move/from16 v59, v0

    invoke-direct/range {v57 .. v59}, Ljavafx/scene/layout/TilePane;->computeOther(II)I

    move-result v57

    move/from16 v0, v57

    move-object/from16 v1, v56

    iput v0, v1, Ljavafx/scene/layout/TilePane;->actualColumns:I

    .line 929
    move-object/from16 v56, v5

    sget-object v57, Ljavafx/geometry/VPos;->TOP:Ljavafx/geometry/VPos;

    move-object/from16 v0, v56

    move-object/from16 v1, v57

    if-eq v0, v1, :cond_5

    move-object/from16 v56, v2

    move-object/from16 v0, v56

    iget v0, v0, Ljavafx/scene/layout/TilePane;->actualRows:I

    move/from16 v56, v0

    move-object/from16 v57, v2

    move-object/from16 v0, v57

    iget v0, v0, Ljavafx/scene/layout/TilePane;->actualColumns:I

    move/from16 v57, v0

    move-object/from16 v58, v2

    move-object/from16 v0, v58

    iget v0, v0, Ljavafx/scene/layout/TilePane;->actualRows:I

    move/from16 v58, v0

    mul-int v57, v57, v58

    move-object/from16 v58, v3

    .line 930
    invoke-interface/range {v58 .. v58}, Ljava/util/List;->size()I

    move-result v58

    sub-int v57, v57, v58

    sub-int v56, v56, v57

    :goto_d
    move/from16 v31, v56

    goto/16 :goto_3

    :cond_5
    const/16 v56, 0x0

    goto :goto_d

    .line 940
    .restart local v32    # "rowX":D
    .restart local v34    # "columnY":D
    :cond_6
    move-wide/from16 v56, v32

    goto/16 :goto_4

    .line 944
    .restart local v36    # "lastRowX":D
    :cond_7
    move-wide/from16 v56, v34

    goto/16 :goto_5

    .line 948
    .restart local v38    # "lastColumnY":D
    :cond_8
    const-wide/high16 v56, -0x4010000000000000L    # -1.0

    goto/16 :goto_6

    .line 954
    .restart local v40    # "baselineOffset":D
    .restart local v42    # "r":I
    .restart local v43    # "c":I
    .restart local v44    # "i":I
    .restart local v45    # "size":I
    .restart local v46    # "child":Ljavafx/scene/Node;
    :cond_9
    move-wide/from16 v56, v32

    goto/16 :goto_8

    .line 955
    .restart local v47    # "xoffset":D
    :cond_a
    move-wide/from16 v56, v34

    goto/16 :goto_9

    .line 964
    .restart local v49    # "yoffset":D
    .restart local v51    # "tileX":D
    .restart local v53    # "tileY":D
    .restart local v55    # "childAlignment":Ljavafx/geometry/Pos;
    :cond_b
    move-object/from16 v69, v2

    invoke-direct/range {v69 .. v69}, Ljavafx/scene/layout/TilePane;->getTileAlignmentInternal()Ljavafx/geometry/Pos;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljavafx/geometry/Pos;->getHpos()Ljavafx/geometry/HPos;

    move-result-object v69

    goto/16 :goto_a

    .line 965
    :cond_c
    move-object/from16 v70, v2

    invoke-direct/range {v70 .. v70}, Ljavafx/scene/layout/TilePane;->getTileAlignmentInternal()Ljavafx/geometry/Pos;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljavafx/geometry/Pos;->getVpos()Ljavafx/geometry/VPos;

    move-result-object v70

    goto/16 :goto_b

    .line 974
    :cond_d
    add-int/lit8 v42, v42, 0x1

    move/from16 v56, v42

    move-object/from16 v57, v2

    move-object/from16 v0, v57

    iget v0, v0, Ljavafx/scene/layout/TilePane;->actualRows:I

    move/from16 v57, v0

    move/from16 v0, v56

    move/from16 v1, v57

    if-ne v0, v1, :cond_0

    .line 975
    const/16 v56, 0x0

    move/from16 v42, v56

    .line 976
    add-int/lit8 v43, v43, 0x1

    goto/16 :goto_c

    .line 980
    .end local v46    # "child":Ljavafx/scene/Node;
    .end local v47    # "xoffset":D
    .end local v49    # "yoffset":D
    .end local v51    # "tileX":D
    .end local v53    # "tileY":D
    .end local v55    # "childAlignment":Ljavafx/geometry/Pos;
    :cond_e
    return-void
.end method

.method public final orientationProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/geometry/Orientation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 357
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/TilePane;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/TilePane;->orientation:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 358
    move-object v1, v0

    new-instance v2, Ljavafx/scene/layout/TilePane$1;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    sget-object v5, Ljavafx/geometry/Orientation;->HORIZONTAL:Ljavafx/geometry/Orientation;

    invoke-direct {v3, v4, v5}, Ljavafx/scene/layout/TilePane$1;-><init>(Ljavafx/scene/layout/TilePane;Ljava/lang/Object;)V

    iput-object v2, v1, Ljavafx/scene/layout/TilePane;->orientation:Ljavafx/beans/property/ObjectProperty;

    .line 380
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/TilePane;->orientation:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/TilePane;
    return-object v0
.end method

.method public final prefColumnsProperty()Ljavafx/beans/property/IntegerProperty;
    .locals 7

    .prologue
    .line 440
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/TilePane;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/TilePane;->prefColumns:Ljavafx/beans/property/IntegerProperty;

    if-nez v1, :cond_0

    .line 441
    move-object v1, v0

    new-instance v2, Ljavafx/scene/layout/TilePane$3;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const/4 v5, 0x5

    invoke-direct {v3, v4, v5}, Ljavafx/scene/layout/TilePane$3;-><init>(Ljavafx/scene/layout/TilePane;I)V

    iput-object v2, v1, Ljavafx/scene/layout/TilePane;->prefColumns:Ljavafx/beans/property/IntegerProperty;

    .line 463
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/TilePane;->prefColumns:Ljavafx/beans/property/IntegerProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/TilePane;
    return-object v0
.end method

.method public final prefRowsProperty()Ljavafx/beans/property/IntegerProperty;
    .locals 7

    .prologue
    .line 399
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/TilePane;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/TilePane;->prefRows:Ljavafx/beans/property/IntegerProperty;

    if-nez v1, :cond_0

    .line 400
    move-object v1, v0

    new-instance v2, Ljavafx/scene/layout/TilePane$2;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const/4 v5, 0x5

    invoke-direct {v3, v4, v5}, Ljavafx/scene/layout/TilePane$2;-><init>(Ljavafx/scene/layout/TilePane;I)V

    iput-object v2, v1, Ljavafx/scene/layout/TilePane;->prefRows:Ljavafx/beans/property/IntegerProperty;

    .line 422
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/TilePane;->prefRows:Ljavafx/beans/property/IntegerProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/TilePane;
    return-object v0
.end method

.method public final prefTileHeightProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 9

    .prologue
    .line 520
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/layout/TilePane;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/layout/TilePane;->prefTileHeight:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    .line 521
    move-object v2, v1

    new-instance v3, Ljavafx/scene/layout/TilePane$5;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/layout/TilePane$5;-><init>(Ljavafx/scene/layout/TilePane;D)V

    iput-object v3, v2, Ljavafx/scene/layout/TilePane;->prefTileHeight:Ljavafx/beans/property/DoubleProperty;

    .line 543
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/layout/TilePane;->prefTileHeight:Ljavafx/beans/property/DoubleProperty;

    move-object v1, v2

    .end local v1    # "this":Ljavafx/scene/layout/TilePane;
    return-object v1
.end method

.method public final prefTileWidthProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 9

    .prologue
    .line 480
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/layout/TilePane;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/layout/TilePane;->prefTileWidth:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    .line 481
    move-object v2, v1

    new-instance v3, Ljavafx/scene/layout/TilePane$4;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/layout/TilePane$4;-><init>(Ljavafx/scene/layout/TilePane;D)V

    iput-object v3, v2, Ljavafx/scene/layout/TilePane;->prefTileWidth:Ljavafx/beans/property/DoubleProperty;

    .line 503
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/layout/TilePane;->prefTileWidth:Ljavafx/beans/property/DoubleProperty;

    move-object v1, v2

    .end local v1    # "this":Ljavafx/scene/layout/TilePane;
    return-object v1
.end method

.method public requestLayout()V
    .locals 2

    .prologue
    .line 778
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/TilePane;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/layout/TilePane;->invalidateTileWidth()V

    .line 779
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/layout/TilePane;->invalidateTileHeight()V

    .line 780
    move-object v1, v0

    invoke-super {v1}, Ljavafx/scene/layout/Pane;->requestLayout()V

    .line 781
    return-void
.end method

.method public final setAlignment(Ljavafx/geometry/Pos;)V
    .locals 4

    .prologue
    .line 726
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/TilePane;
    move-object v1, p1

    .local v1, "value":Ljavafx/geometry/Pos;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/layout/TilePane;->alignmentProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final setHgap(D)V
    .locals 7

    .prologue
    .line 651
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/TilePane;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/layout/TilePane;->hgapProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    return-void
.end method

.method public final setOrientation(Ljavafx/geometry/Orientation;)V
    .locals 4

    .prologue
    .line 384
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/TilePane;
    move-object v1, p1

    .local v1, "value":Ljavafx/geometry/Orientation;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/layout/TilePane;->orientationProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final setPrefColumns(I)V
    .locals 4

    .prologue
    .line 467
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/TilePane;
    move v1, p1

    .local v1, "value":I
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/layout/TilePane;->prefColumnsProperty()Ljavafx/beans/property/IntegerProperty;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/IntegerProperty;->set(I)V

    return-void
.end method

.method public final setPrefRows(I)V
    .locals 4

    .prologue
    .line 426
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/TilePane;
    move v1, p1

    .local v1, "value":I
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/layout/TilePane;->prefRowsProperty()Ljavafx/beans/property/IntegerProperty;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/IntegerProperty;->set(I)V

    return-void
.end method

.method public final setPrefTileHeight(D)V
    .locals 7

    .prologue
    .line 547
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/TilePane;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/layout/TilePane;->prefTileHeightProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    return-void
.end method

.method public final setPrefTileWidth(D)V
    .locals 7

    .prologue
    .line 507
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/TilePane;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/layout/TilePane;->prefTileWidthProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    return-void
.end method

.method public final setTileAlignment(Ljavafx/geometry/Pos;)V
    .locals 4

    .prologue
    .line 766
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/TilePane;
    move-object v1, p1

    .local v1, "value":Ljavafx/geometry/Pos;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/layout/TilePane;->tileAlignmentProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final setVgap(D)V
    .locals 7

    .prologue
    .line 685
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/TilePane;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/layout/TilePane;->vgapProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    return-void
.end method

.method public final tileAlignmentProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/geometry/Pos;",
            ">;"
        }
    .end annotation

    .prologue
    .line 739
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/TilePane;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/TilePane;->tileAlignment:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 740
    move-object v1, v0

    new-instance v2, Ljavafx/scene/layout/TilePane$11;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    sget-object v5, Ljavafx/geometry/Pos;->CENTER:Ljavafx/geometry/Pos;

    invoke-direct {v3, v4, v5}, Ljavafx/scene/layout/TilePane$11;-><init>(Ljavafx/scene/layout/TilePane;Ljavafx/geometry/Pos;)V

    iput-object v2, v1, Ljavafx/scene/layout/TilePane;->tileAlignment:Ljavafx/beans/property/ObjectProperty;

    .line 762
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/TilePane;->tileAlignment:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/TilePane;
    return-object v0
.end method

.method public final tileHeightProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;
    .locals 9

    .prologue
    .line 589
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/TilePane;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/TilePane;->tileHeight:Ljavafx/scene/layout/TilePane$TileSizeProperty;

    if-nez v1, :cond_0

    .line 590
    move-object v1, v0

    new-instance v2, Ljavafx/scene/layout/TilePane$7;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    const-string v5, "tileHeight"

    move-object v6, v0

    iget-wide v6, v6, Ljavafx/scene/layout/TilePane;->_tileHeight:D

    invoke-direct {v3, v4, v5, v6, v7}, Ljavafx/scene/layout/TilePane$7;-><init>(Ljavafx/scene/layout/TilePane;Ljava/lang/String;D)V

    iput-object v2, v1, Ljavafx/scene/layout/TilePane;->tileHeight:Ljavafx/scene/layout/TilePane$TileSizeProperty;

    .line 599
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/TilePane;->tileHeight:Ljavafx/scene/layout/TilePane$TileSizeProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/TilePane;
    return-object v0
.end method

.method public final tileWidthProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;
    .locals 9

    .prologue
    .line 554
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/TilePane;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/TilePane;->tileWidth:Ljavafx/scene/layout/TilePane$TileSizeProperty;

    if-nez v1, :cond_0

    .line 555
    move-object v1, v0

    new-instance v2, Ljavafx/scene/layout/TilePane$6;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    const-string v5, "tileWidth"

    move-object v6, v0

    iget-wide v6, v6, Ljavafx/scene/layout/TilePane;->_tileWidth:D

    invoke-direct {v3, v4, v5, v6, v7}, Ljavafx/scene/layout/TilePane$6;-><init>(Ljavafx/scene/layout/TilePane;Ljava/lang/String;D)V

    iput-object v2, v1, Ljavafx/scene/layout/TilePane;->tileWidth:Ljavafx/scene/layout/TilePane$TileSizeProperty;

    .line 564
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/TilePane;->tileWidth:Ljavafx/scene/layout/TilePane$TileSizeProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/TilePane;
    return-object v0
.end method

.method public final vgapProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 6

    .prologue
    .line 658
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/TilePane;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/TilePane;->vgap:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    .line 659
    move-object v1, v0

    new-instance v2, Ljavafx/scene/layout/TilePane$9;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/layout/TilePane$9;-><init>(Ljavafx/scene/layout/TilePane;)V

    iput-object v2, v1, Ljavafx/scene/layout/TilePane;->vgap:Ljavafx/beans/property/DoubleProperty;

    .line 681
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/TilePane;->vgap:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/TilePane;
    return-object v0
.end method

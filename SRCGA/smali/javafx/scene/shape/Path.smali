.class public Ljavafx/scene/shape/Path;
.super Ljavafx/scene/shape/Shape;
.source "Path.java"


# instance fields
.field private final elements:Ljavafx/collections/ObservableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/scene/shape/PathElement;",
            ">;"
        }
    .end annotation
.end field

.field private fillRule:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/shape/FillRule;",
            ">;"
        }
    .end annotation
.end field

.field private isPathValid:Z

.field private path2d:Lcom/sun/javafx/geom/Path2D;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Path;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/shape/Shape;-><init>()V

    .line 91
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Ljavafx/scene/shape/Path;->path2d:Lcom/sun/javafx/geom/Path2D;

    .line 125
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/shape/Path;->fillProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    check-cast v1, Ljavafx/css/StyleableProperty;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Ljavafx/css/StyleableProperty;->applyStyle(Ljavafx/css/StyleOrigin;Ljava/lang/Object;)V

    .line 126
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/shape/Path;->strokeProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    check-cast v1, Ljavafx/css/StyleableProperty;

    const/4 v2, 0x0

    sget-object v3, Ljavafx/scene/paint/Color;->BLACK:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljavafx/css/StyleableProperty;->applyStyle(Ljavafx/css/StyleOrigin;Ljava/lang/Object;)V

    .line 185
    move-object v1, v0

    new-instance v2, Ljavafx/scene/shape/Path$2;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/shape/Path$2;-><init>(Ljavafx/scene/shape/Path;)V

    iput-object v2, v1, Ljavafx/scene/shape/Path;->elements:Ljavafx/collections/ObservableList;

    .line 97
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Ljavafx/scene/shape/PathElement;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 115
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Path;
    move-object v1, p1

    .local v1, "elements":Ljava/util/Collection;, "Ljava/util/Collection<+Ljavafx/scene/shape/PathElement;>;"
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/shape/Shape;-><init>()V

    .line 91
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Ljavafx/scene/shape/Path;->path2d:Lcom/sun/javafx/geom/Path2D;

    .line 125
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/shape/Path;->fillProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    check-cast v2, Ljavafx/css/StyleableProperty;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Ljavafx/css/StyleableProperty;->applyStyle(Ljavafx/css/StyleOrigin;Ljava/lang/Object;)V

    .line 126
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/shape/Path;->strokeProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    check-cast v2, Ljavafx/css/StyleableProperty;

    const/4 v3, 0x0

    sget-object v4, Ljavafx/scene/paint/Color;->BLACK:Ljavafx/scene/paint/Color;

    invoke-interface {v2, v3, v4}, Ljavafx/css/StyleableProperty;->applyStyle(Ljavafx/css/StyleOrigin;Ljava/lang/Object;)V

    .line 185
    move-object v2, v0

    new-instance v3, Ljavafx/scene/shape/Path$2;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Ljavafx/scene/shape/Path$2;-><init>(Ljavafx/scene/shape/Path;)V

    iput-object v3, v2, Ljavafx/scene/shape/Path;->elements:Ljavafx/collections/ObservableList;

    .line 116
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 117
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/shape/Path;->elements:Ljavafx/collections/ObservableList;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->addAll(Ljava/util/Collection;)Z

    move-result v2

    .line 119
    :cond_0
    return-void
.end method

.method public varargs constructor <init>([Ljavafx/scene/shape/PathElement;)V
    .locals 7

    .prologue
    .line 104
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Path;
    move-object v1, p1

    .local v1, "elements":[Ljavafx/scene/shape/PathElement;
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/shape/Shape;-><init>()V

    .line 91
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Ljavafx/scene/shape/Path;->path2d:Lcom/sun/javafx/geom/Path2D;

    .line 125
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/shape/Path;->fillProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    check-cast v2, Ljavafx/css/StyleableProperty;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Ljavafx/css/StyleableProperty;->applyStyle(Ljavafx/css/StyleOrigin;Ljava/lang/Object;)V

    .line 126
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/shape/Path;->strokeProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    check-cast v2, Ljavafx/css/StyleableProperty;

    const/4 v3, 0x0

    sget-object v4, Ljavafx/scene/paint/Color;->BLACK:Ljavafx/scene/paint/Color;

    invoke-interface {v2, v3, v4}, Ljavafx/css/StyleableProperty;->applyStyle(Ljavafx/css/StyleOrigin;Ljava/lang/Object;)V

    .line 185
    move-object v2, v0

    new-instance v3, Ljavafx/scene/shape/Path$2;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Ljavafx/scene/shape/Path$2;-><init>(Ljavafx/scene/shape/Path;)V

    iput-object v3, v2, Ljavafx/scene/shape/Path;->elements:Ljavafx/collections/ObservableList;

    .line 105
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 106
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/shape/Path;->elements:Ljavafx/collections/ObservableList;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->addAll([Ljava/lang/Object;)Z

    move-result v2

    .line 108
    :cond_0
    return-void
.end method

.method static synthetic access$000(Ljavafx/scene/shape/Path;)V
    .locals 2

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/shape/Path;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/shape/Path;->impl_geomChanged()V

    return-void
.end method

.method static synthetic access$100(Ljavafx/scene/shape/Path;)Lcom/sun/javafx/geom/Path2D;
    .locals 2

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/shape/Path;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Path;->path2d:Lcom/sun/javafx/geom/Path2D;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/shape/Path;
    return-object v0
.end method

.method static synthetic access$102(Ljavafx/scene/shape/Path;Lcom/sun/javafx/geom/Path2D;)Lcom/sun/javafx/geom/Path2D;
    .locals 7

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/shape/Path;
    move-object v1, p1

    .local v1, "x1":Lcom/sun/javafx/geom/Path2D;
    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Ljavafx/scene/shape/Path;->path2d:Lcom/sun/javafx/geom/Path2D;

    move-object v0, v2

    .end local v0    # "x0":Ljavafx/scene/shape/Path;
    return-object v0
.end method

.method static synthetic access$202(Ljavafx/scene/shape/Path;Z)Z
    .locals 7

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/shape/Path;
    move v1, p1

    .local v1, "x1":Z
    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput-boolean v4, v3, Ljavafx/scene/shape/Path;->isPathValid:Z

    move v0, v2

    .end local v0    # "x0":Ljavafx/scene/shape/Path;
    return v0
.end method

.method static synthetic access$300(Ljavafx/scene/shape/Path;)Z
    .locals 2

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/shape/Path;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/shape/Path;->impl_isFirstPathElementValid()Z

    move-result v1

    move v0, v1

    .end local v0    # "x0":Ljavafx/scene/shape/Path;
    return v0
.end method

.method static synthetic access$400(Ljavafx/scene/shape/Path;)V
    .locals 2

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/shape/Path;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/shape/Path;->impl_geomChanged()V

    return-void
.end method

.method private impl_isFirstPathElementValid()Z
    .locals 10

    .prologue
    .line 276
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Path;
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/shape/Path;->getElements()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v1, v3

    .line 277
    .local v1, "_elements":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljavafx/scene/shape/PathElement;>;"
    move-object v3, v1

    if-eqz v3, :cond_2

    move-object v3, v1

    invoke-interface {v3}, Ljavafx/collections/ObservableList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 278
    move-object v3, v1

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/scene/shape/PathElement;

    move-object v2, v3

    .line 279
    .local v2, "firstElement":Ljavafx/scene/shape/PathElement;
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/shape/PathElement;->isAbsolute()Z

    move-result v3

    if-nez v3, :cond_0

    .line 280
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "First element of the path can not be relative. Path: %s\n"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v0

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v5}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    move-result-object v3

    .line 281
    const/4 v3, 0x0

    move v0, v3

    .line 289
    .end local v0    # "this":Ljavafx/scene/shape/Path;
    .end local v2    # "firstElement":Ljavafx/scene/shape/PathElement;
    :goto_0
    return v0

    .line 282
    .restart local v0    # "this":Ljavafx/scene/shape/Path;
    .restart local v2    # "firstElement":Ljavafx/scene/shape/PathElement;
    :cond_0
    move-object v3, v2

    instance-of v3, v3, Ljavafx/scene/shape/MoveTo;

    if-eqz v3, :cond_1

    .line 283
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0

    .line 285
    :cond_1
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "Missing initial moveto in path definition. Path: %s\n"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v0

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v5}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    move-result-object v3

    .line 286
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 289
    .end local v2    # "firstElement":Ljavafx/scene/shape/PathElement;
    :cond_2
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0
.end method


# virtual methods
.method public final fillRuleProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/shape/FillRule;",
            ">;"
        }
    .end annotation

    .prologue
    .line 156
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Path;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Path;->fillRule:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 157
    move-object v1, v0

    new-instance v2, Ljavafx/scene/shape/Path$1;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    sget-object v5, Ljavafx/scene/shape/FillRule;->NON_ZERO:Ljavafx/scene/shape/FillRule;

    invoke-direct {v3, v4, v5}, Ljavafx/scene/shape/Path$1;-><init>(Ljavafx/scene/shape/Path;Ljavafx/scene/shape/FillRule;)V

    iput-object v2, v1, Ljavafx/scene/shape/Path;->fillRule:Ljavafx/beans/property/ObjectProperty;

    .line 176
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Path;->fillRule:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/Path;
    return-object v0
.end method

.method public final getElements()Ljavafx/collections/ObservableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/scene/shape/PathElement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 230
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Path;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Path;->elements:Ljavafx/collections/ObservableList;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/Path;
    return-object v0
.end method

.method public final getFillRule()Ljavafx/scene/shape/FillRule;
    .locals 2

    .prologue
    .line 152
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Path;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Path;->fillRule:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    sget-object v1, Ljavafx/scene/shape/FillRule;->NON_ZERO:Ljavafx/scene/shape/FillRule;

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/Path;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/shape/Path;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Path;->fillRule:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/shape/FillRule;

    goto :goto_0
.end method

.method protected impl_computeLayoutBounds()Ljavafx/geometry/Bounds;
    .locals 13
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 269
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/shape/Path;
    move-object v2, v1

    iget-boolean v2, v2, Ljavafx/scene/shape/Path;->isPathValid:Z

    if-eqz v2, :cond_0

    .line 270
    move-object v2, v1

    invoke-super {v2}, Ljavafx/scene/shape/Shape;->impl_computeLayoutBounds()Ljavafx/geometry/Bounds;

    move-result-object v2

    move-object v1, v2

    .line 272
    .end local v1    # "this":Ljavafx/scene/shape/Path;
    :goto_0
    return-object v1

    .restart local v1    # "this":Ljavafx/scene/shape/Path;
    :cond_0
    new-instance v2, Ljavafx/geometry/BoundingBox;

    move-object v12, v2

    move-object v2, v12

    move-object v3, v12

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    const-wide/high16 v10, -0x4010000000000000L    # -1.0

    invoke-direct/range {v3 .. v11}, Ljavafx/geometry/BoundingBox;-><init>(DDDD)V

    move-object v1, v2

    goto :goto_0
.end method

.method public impl_configShape()Lcom/sun/javafx/geom/Path2D;
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 249
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Path;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/shape/Path;->isPathValid:Z

    if-eqz v1, :cond_3

    .line 250
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Path;->path2d:Lcom/sun/javafx/geom/Path2D;

    if-nez v1, :cond_1

    .line 251
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/shape/Path;->getElements()Ljavafx/collections/ObservableList;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/shape/Path;->getFillRule()Ljavafx/scene/shape/FillRule;

    move-result-object v3

    sget-object v4, Ljavafx/scene/shape/FillRule;->EVEN_ODD:Ljavafx/scene/shape/FillRule;

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-static {v2, v3}, Lcom/sun/javafx/scene/shape/PathUtils;->configShape(Ljava/util/Collection;Z)Lcom/sun/javafx/geom/Path2D;

    move-result-object v2

    iput-object v2, v1, Ljavafx/scene/shape/Path;->path2d:Lcom/sun/javafx/geom/Path2D;

    .line 256
    :goto_1
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Path;->path2d:Lcom/sun/javafx/geom/Path2D;

    move-object v0, v1

    .line 258
    .end local v0    # "this":Ljavafx/scene/shape/Path;
    :goto_2
    return-object v0

    .line 251
    .restart local v0    # "this":Ljavafx/scene/shape/Path;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 253
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Path;->path2d:Lcom/sun/javafx/geom/Path2D;

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/shape/Path;->getFillRule()Ljavafx/scene/shape/FillRule;

    move-result-object v2

    sget-object v3, Ljavafx/scene/shape/FillRule;->NON_ZERO:Ljavafx/scene/shape/FillRule;

    if-ne v2, v3, :cond_2

    const/4 v2, 0x1

    :goto_3
    invoke-virtual {v1, v2}, Lcom/sun/javafx/geom/Path2D;->setWindingRule(I)V

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_3

    .line 258
    :cond_3
    new-instance v1, Lcom/sun/javafx/geom/Path2D;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    invoke-direct {v2}, Lcom/sun/javafx/geom/Path2D;-><init>()V

    move-object v0, v1

    goto :goto_2
.end method

.method public bridge synthetic impl_configShape()Lcom/sun/javafx/geom/Shape;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Path;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/shape/Path;->impl_configShape()Lcom/sun/javafx/geom/Path2D;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/Path;
    return-object v0
.end method

.method protected impl_createPeer()Lcom/sun/javafx/sg/prism/NGNode;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 239
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Path;
    new-instance v1, Lcom/sun/javafx/sg/prism/NGPath;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Lcom/sun/javafx/sg/prism/NGPath;-><init>()V

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/Path;
    return-object v0
.end method

.method protected impl_cssGetFillInitialValue()Ljavafx/scene/paint/Paint;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 333
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Path;
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/Path;
    return-object v0
.end method

.method protected impl_cssGetStrokeInitialValue()Ljavafx/scene/paint/Paint;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 345
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Path;
    sget-object v1, Ljavafx/scene/paint/Color;->BLACK:Ljavafx/scene/paint/Color;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/Path;
    return-object v0
.end method

.method public impl_updatePeer()V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 299
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Path;
    move-object v4, v0

    invoke-super {v4}, Ljavafx/scene/shape/Shape;->impl_updatePeer()V

    .line 301
    move-object v4, v0

    sget-object v5, Lcom/sun/javafx/scene/DirtyBits;->NODE_CONTENTS:Lcom/sun/javafx/scene/DirtyBits;

    invoke-virtual {v4, v5}, Ljavafx/scene/shape/Path;->impl_isDirty(Lcom/sun/javafx/scene/DirtyBits;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 302
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/shape/Path;->impl_getPeer()Lcom/sun/javafx/sg/prism/NGNode;

    move-result-object v4

    check-cast v4, Lcom/sun/javafx/sg/prism/NGPath;

    move-object v1, v4

    .line 303
    .local v1, "peer":Lcom/sun/javafx/sg/prism/NGPath;
    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/sg/prism/NGPath;->acceptsPath2dOnUpdate()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 304
    move-object v4, v1

    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/shape/Path;->impl_configShape()Lcom/sun/javafx/geom/Path2D;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sun/javafx/sg/prism/NGPath;->updateWithPath2d(Lcom/sun/javafx/geom/Path2D;)V

    .line 316
    .end local v1    # "peer":Lcom/sun/javafx/sg/prism/NGPath;
    :cond_0
    :goto_0
    return-void

    .line 306
    .restart local v1    # "peer":Lcom/sun/javafx/sg/prism/NGPath;
    :cond_1
    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/sg/prism/NGPath;->reset()V

    .line 307
    move-object v4, v0

    iget-boolean v4, v4, Ljavafx/scene/shape/Path;->isPathValid:Z

    if-eqz v4, :cond_0

    .line 308
    move-object v4, v1

    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/shape/Path;->getFillRule()Ljavafx/scene/shape/FillRule;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sun/javafx/sg/prism/NGPath;->setFillRule(Ljavafx/scene/shape/FillRule;)V

    .line 309
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/shape/Path;->getElements()Ljavafx/collections/ObservableList;

    move-result-object v4

    invoke-interface {v4}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_1
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/scene/shape/PathElement;

    move-object v3, v4

    .line 310
    .local v3, "elt":Ljavafx/scene/shape/PathElement;
    move-object v4, v3

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljavafx/scene/shape/PathElement;->addTo(Lcom/sun/javafx/sg/prism/NGPath;)V

    .line 311
    goto :goto_1

    .line 312
    .end local v3    # "elt":Ljavafx/scene/shape/PathElement;
    :cond_2
    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/sg/prism/NGPath;->update()V

    goto :goto_0
.end method

.method markPathDirty()V
    .locals 3

    .prologue
    .line 130
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Path;
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Ljavafx/scene/shape/Path;->path2d:Lcom/sun/javafx/geom/Path2D;

    .line 131
    move-object v1, v0

    sget-object v2, Lcom/sun/javafx/scene/DirtyBits;->NODE_CONTENTS:Lcom/sun/javafx/scene/DirtyBits;

    invoke-virtual {v1, v2}, Ljavafx/scene/shape/Path;->impl_markDirty(Lcom/sun/javafx/scene/DirtyBits;)V

    .line 132
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/shape/Path;->impl_geomChanged()V

    .line 133
    return-void
.end method

.method public final setFillRule(Ljavafx/scene/shape/FillRule;)V
    .locals 4

    .prologue
    .line 146
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Path;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/shape/FillRule;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/shape/Path;->fillRule:Ljavafx/beans/property/ObjectProperty;

    if-nez v2, :cond_0

    move-object v2, v1

    sget-object v3, Ljavafx/scene/shape/FillRule;->NON_ZERO:Ljavafx/scene/shape/FillRule;

    if-eq v2, v3, :cond_1

    .line 147
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/shape/Path;->fillRuleProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 149
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .prologue
    .line 354
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/shape/Path;
    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string v7, "Path["

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v2, v5

    .line 356
    .local v2, "sb":Ljava/lang/StringBuilder;
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/shape/Path;->getId()Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 357
    .local v3, "id":Ljava/lang/String;
    move-object v5, v3

    if-eqz v5, :cond_0

    .line 358
    move-object v5, v2

    const-string v6, "id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 361
    :cond_0
    move-object v5, v2

    const-string v6, "elements="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/shape/Path;->getElements()Ljavafx/collections/ObservableList;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 363
    move-object v5, v2

    const-string v6, ", fill="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/shape/Path;->getFill()Ljavafx/scene/paint/Paint;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 364
    move-object v5, v2

    const-string v6, ", fillRule="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/shape/Path;->getFillRule()Ljavafx/scene/shape/FillRule;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 366
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/shape/Path;->getStroke()Ljavafx/scene/paint/Paint;

    move-result-object v5

    move-object v4, v5

    .line 367
    .local v4, "stroke":Ljavafx/scene/paint/Paint;
    move-object v5, v4

    if-eqz v5, :cond_1

    .line 368
    move-object v5, v2

    const-string v6, ", stroke="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 369
    move-object v5, v2

    const-string v6, ", strokeWidth="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/shape/Path;->getStrokeWidth()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 372
    :cond_1
    move-object v5, v2

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    .end local v1    # "this":Ljavafx/scene/shape/Path;
    return-object v1
.end method

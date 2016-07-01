.class Ljavafx/scene/shape/Shape$StrokeAttributes$8;
.super Ljavafx/css/StyleableObjectProperty;
.source "Shape.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/shape/Shape$StrokeAttributes;->cssDashArrayProperty()Ljavafx/beans/property/ObjectProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/css/StyleableObjectProperty",
        "<[",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Ljavafx/scene/shape/Shape$StrokeAttributes;


# direct methods
.method constructor <init>(Ljavafx/scene/shape/Shape$StrokeAttributes;)V
    .locals 4

    .prologue
    .line 1426
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Shape$StrokeAttributes$8;
    move-object v1, p1

    .local v1, "this$1":Ljavafx/scene/shape/Shape$StrokeAttributes;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/shape/Shape$StrokeAttributes$8;->this$1:Ljavafx/scene/shape/Shape$StrokeAttributes;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/css/StyleableObjectProperty;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1426
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Shape$StrokeAttributes$8;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/shape/Shape$StrokeAttributes$8;->get()[Ljava/lang/Double;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/Shape$StrokeAttributes$8;
    return-object v0
.end method

.method public get()[Ljava/lang/Double;
    .locals 4

    .prologue
    .line 1444
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Shape$StrokeAttributes$8;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/shape/Shape$StrokeAttributes$8;->this$1:Ljavafx/scene/shape/Shape$StrokeAttributes;

    invoke-virtual {v2}, Ljavafx/scene/shape/Shape$StrokeAttributes;->dashArrayProperty()Ljavafx/collections/ObservableList;

    move-result-object v2

    move-object v1, v2

    .line 1445
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    move-object v2, v1

    move-object v3, v1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/Double;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Double;

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/shape/Shape$StrokeAttributes$8;
    return-object v0
.end method

.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1450
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Shape$StrokeAttributes$8;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Shape$StrokeAttributes$8;->this$1:Ljavafx/scene/shape/Shape$StrokeAttributes;

    iget-object v1, v1, Ljavafx/scene/shape/Shape$StrokeAttributes;->this$0:Ljavafx/scene/shape/Shape;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/Shape$StrokeAttributes$8;
    return-object v0
.end method

.method public getCssMetaData()Ljavafx/css/CssMetaData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/shape/Shape;",
            "[",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1460
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Shape$StrokeAttributes$8;
    # getter for: Ljavafx/scene/shape/Shape$StyleableProperties;->STROKE_DASH_ARRAY:Ljavafx/css/CssMetaData;
    invoke-static {}, Ljavafx/scene/shape/Shape$StyleableProperties;->access$2400()Ljavafx/css/CssMetaData;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/Shape$StrokeAttributes$8;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1455
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Shape$StrokeAttributes$8;
    const-string v1, "cssDashArray"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/Shape$StrokeAttributes$8;
    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 1426
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Shape$StrokeAttributes$8;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, [Ljava/lang/Number;

    invoke-virtual {v2, v3}, Ljavafx/scene/shape/Shape$StrokeAttributes$8;->set([Ljava/lang/Number;)V

    return-void
.end method

.method public set([Ljava/lang/Number;)V
    .locals 8

    .prologue
    .line 1431
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/shape/Shape$StrokeAttributes$8;
    move-object v2, p1

    .local v2, "v":[Ljava/lang/Number;
    move-object v5, v1

    iget-object v5, v5, Ljavafx/scene/shape/Shape$StrokeAttributes$8;->this$1:Ljavafx/scene/shape/Shape$StrokeAttributes;

    invoke-virtual {v5}, Ljavafx/scene/shape/Shape$StrokeAttributes;->dashArrayProperty()Ljavafx/collections/ObservableList;

    move-result-object v5

    move-object v3, v5

    .line 1432
    .local v3, "list":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljava/lang/Double;>;"
    move-object v5, v3

    invoke-interface {v5}, Ljavafx/collections/ObservableList;->clear()V

    .line 1433
    move-object v5, v2

    if-eqz v5, :cond_0

    move-object v5, v2

    array-length v5, v5

    if-lez v5, :cond_0

    .line 1434
    const/4 v5, 0x0

    move v4, v5

    .local v4, "n":I
    :goto_0
    move v5, v4

    move-object v6, v2

    array-length v6, v6

    if-ge v5, v6, :cond_0

    .line 1435
    move-object v5, v3

    move-object v6, v2

    move v7, v4

    aget-object v6, v6, v7

    invoke-virtual {v6}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 1434
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1440
    .end local v4    # "n":I
    :cond_0
    return-void
.end method

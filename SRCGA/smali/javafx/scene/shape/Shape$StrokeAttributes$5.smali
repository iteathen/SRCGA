.class Ljavafx/scene/shape/Shape$StrokeAttributes$5;
.super Ljavafx/css/StyleableDoubleProperty;
.source "Shape.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/shape/Shape$StrokeAttributes;->miterLimitProperty()Ljavafx/beans/property/DoubleProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ljavafx/scene/shape/Shape$StrokeAttributes;


# direct methods
.method constructor <init>(Ljavafx/scene/shape/Shape$StrokeAttributes;D)V
    .locals 8

    .prologue
    .line 1345
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Shape$StrokeAttributes$5;
    move-object v1, p1

    .local v1, "this$1":Ljavafx/scene/shape/Shape$StrokeAttributes;
    move-wide v2, p2

    .local v2, "initialValue":D
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljavafx/scene/shape/Shape$StrokeAttributes$5;->this$1:Ljavafx/scene/shape/Shape$StrokeAttributes;

    move-object v4, v0

    move-wide v5, v2

    invoke-direct {v4, v5, v6}, Ljavafx/css/StyleableDoubleProperty;-><init>(D)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1359
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Shape$StrokeAttributes$5;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Shape$StrokeAttributes$5;->this$1:Ljavafx/scene/shape/Shape$StrokeAttributes;

    iget-object v1, v1, Ljavafx/scene/shape/Shape$StrokeAttributes;->this$0:Ljavafx/scene/shape/Shape;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/Shape$StrokeAttributes$5;
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
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1354
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Shape$StrokeAttributes$5;
    # getter for: Ljavafx/scene/shape/Shape$StyleableProperties;->STROKE_MITER_LIMIT:Ljavafx/css/CssMetaData;
    invoke-static {}, Ljavafx/scene/shape/Shape$StyleableProperties;->access$2200()Ljavafx/css/CssMetaData;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/Shape$StrokeAttributes$5;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1364
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Shape$StrokeAttributes$5;
    const-string v1, "strokeMiterLimit"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/Shape$StrokeAttributes$5;
    return-object v0
.end method

.method public invalidated()V
    .locals 3

    .prologue
    .line 1348
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Shape$StrokeAttributes$5;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Shape$StrokeAttributes$5;->this$1:Ljavafx/scene/shape/Shape$StrokeAttributes;

    .line 1349
    # getter for: Ljavafx/scene/shape/Shape$StyleableProperties;->STROKE_MITER_LIMIT:Ljavafx/css/CssMetaData;
    invoke-static {}, Ljavafx/scene/shape/Shape$StyleableProperties;->access$2200()Ljavafx/css/CssMetaData;

    move-result-object v2

    .line 1348
    invoke-static {v1, v2}, Ljavafx/scene/shape/Shape$StrokeAttributes;->access$1600(Ljavafx/scene/shape/Shape$StrokeAttributes;Ljavafx/css/CssMetaData;)V

    .line 1350
    return-void
.end method

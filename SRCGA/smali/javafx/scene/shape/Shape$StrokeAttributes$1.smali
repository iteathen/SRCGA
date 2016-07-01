.class Ljavafx/scene/shape/Shape$StrokeAttributes$1;
.super Ljavafx/css/StyleableObjectProperty;
.source "Shape.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/shape/Shape$StrokeAttributes;->typeProperty()Ljavafx/beans/property/ObjectProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/css/StyleableObjectProperty",
        "<",
        "Ljavafx/scene/shape/StrokeType;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Ljavafx/scene/shape/Shape$StrokeAttributes;


# direct methods
.method constructor <init>(Ljavafx/scene/shape/Shape$StrokeAttributes;Ljavafx/scene/shape/StrokeType;)V
    .locals 5

    .prologue
    .line 1206
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Shape$StrokeAttributes$1;
    move-object v1, p1

    .local v1, "this$1":Ljavafx/scene/shape/Shape$StrokeAttributes;
    move-object v2, p2

    .local v2, "initialValue":Ljavafx/scene/shape/StrokeType;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/shape/Shape$StrokeAttributes$1;->this$1:Ljavafx/scene/shape/Shape$StrokeAttributes;

    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Ljavafx/css/StyleableObjectProperty;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1221
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Shape$StrokeAttributes$1;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Shape$StrokeAttributes$1;->this$1:Ljavafx/scene/shape/Shape$StrokeAttributes;

    iget-object v1, v1, Ljavafx/scene/shape/Shape$StrokeAttributes;->this$0:Ljavafx/scene/shape/Shape;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/Shape$StrokeAttributes$1;
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
            "Ljavafx/scene/shape/StrokeType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1216
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Shape$StrokeAttributes$1;
    # getter for: Ljavafx/scene/shape/Shape$StyleableProperties;->STROKE_TYPE:Ljavafx/css/CssMetaData;
    invoke-static {}, Ljavafx/scene/shape/Shape$StyleableProperties;->access$1500()Ljavafx/css/CssMetaData;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/Shape$StrokeAttributes$1;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1226
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Shape$StrokeAttributes$1;
    const-string v1, "strokeType"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/Shape$StrokeAttributes$1;
    return-object v0
.end method

.method public invalidated()V
    .locals 3

    .prologue
    .line 1210
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Shape$StrokeAttributes$1;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Shape$StrokeAttributes$1;->this$1:Ljavafx/scene/shape/Shape$StrokeAttributes;

    .line 1211
    # getter for: Ljavafx/scene/shape/Shape$StyleableProperties;->STROKE_TYPE:Ljavafx/css/CssMetaData;
    invoke-static {}, Ljavafx/scene/shape/Shape$StyleableProperties;->access$1500()Ljavafx/css/CssMetaData;

    move-result-object v2

    .line 1210
    invoke-static {v1, v2}, Ljavafx/scene/shape/Shape$StrokeAttributes;->access$1600(Ljavafx/scene/shape/Shape$StrokeAttributes;Ljavafx/css/CssMetaData;)V

    .line 1212
    return-void
.end method

.class Ljavafx/scene/control/Slider$10;
.super Ljavafx/css/StyleableDoubleProperty;
.source "Slider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/control/Slider;->blockIncrementProperty()Ljavafx/beans/property/DoubleProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/control/Slider;


# direct methods
.method constructor <init>(Ljavafx/scene/control/Slider;D)V
    .locals 8

    .prologue
    .line 546
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Slider$10;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/Slider;
    move-wide v2, p2

    .local v2, "x0":D
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljavafx/scene/control/Slider$10;->this$0:Ljavafx/scene/control/Slider;

    move-object v4, v0

    move-wide v5, v2

    invoke-direct {v4, v5, v6}, Ljavafx/css/StyleableDoubleProperty;-><init>(D)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 555
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Slider$10;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Slider$10;->this$0:Ljavafx/scene/control/Slider;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Slider$10;
    return-object v0
.end method

.method public getCssMetaData()Ljavafx/css/CssMetaData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/control/Slider;",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .prologue
    .line 550
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Slider$10;
    # getter for: Ljavafx/scene/control/Slider$StyleableProperties;->BLOCK_INCREMENT:Ljavafx/css/CssMetaData;
    invoke-static {}, Ljavafx/scene/control/Slider$StyleableProperties;->access$900()Ljavafx/css/CssMetaData;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Slider$10;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 560
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Slider$10;
    const-string v1, "blockIncrement"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Slider$10;
    return-object v0
.end method

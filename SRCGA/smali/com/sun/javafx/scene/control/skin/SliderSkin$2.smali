.class Lcom/sun/javafx/scene/control/skin/SliderSkin$2;
.super Ljavafx/util/StringConverter;
.source "SliderSkin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/scene/control/skin/SliderSkin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/util/StringConverter",
        "<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# instance fields
.field slider:Ljavafx/scene/control/Slider;

.field final synthetic this$0:Lcom/sun/javafx/scene/control/skin/SliderSkin;


# direct methods
.method constructor <init>(Lcom/sun/javafx/scene/control/skin/SliderSkin;)V
    .locals 4

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/SliderSkin$2;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/javafx/scene/control/skin/SliderSkin;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/SliderSkin$2;->this$0:Lcom/sun/javafx/scene/control/skin/SliderSkin;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/util/StringConverter;-><init>()V

    .line 145
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/SliderSkin$2;->this$0:Lcom/sun/javafx/scene/control/skin/SliderSkin;

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/SliderSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/Slider;

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/SliderSkin$2;->slider:Ljavafx/scene/control/Slider;

    return-void
.end method


# virtual methods
.method public fromString(Ljava/lang/String;)Ljava/lang/Number;
    .locals 4

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/SliderSkin$2;
    move-object v1, p1

    .local v1, "string":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/SliderSkin$2;->slider:Ljavafx/scene/control/Slider;

    invoke-virtual {v2}, Ljavafx/scene/control/Slider;->getLabelFormatter()Ljavafx/util/StringConverter;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/util/StringConverter;->fromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/SliderSkin$2;
    return-object v0
.end method

.method public bridge synthetic fromString(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/SliderSkin$2;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/skin/SliderSkin$2;->fromString(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/SliderSkin$2;
    return-object v0
.end method

.method public toString(Ljava/lang/Number;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 147
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/SliderSkin$2;
    move-object v2, p1

    .local v2, "object":Ljava/lang/Number;
    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/SliderSkin$2;->slider:Ljavafx/scene/control/Slider;

    invoke-virtual {v3}, Ljavafx/scene/control/Slider;->getLabelFormatter()Ljavafx/util/StringConverter;

    move-result-object v3

    move-object v4, v2

    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/util/StringConverter;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_0
    move-object v1, v3

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/SliderSkin$2;
    return-object v1

    .restart local v1    # "this":Lcom/sun/javafx/scene/control/skin/SliderSkin$2;
    :cond_0
    const-string v3, ""

    goto :goto_0
.end method

.method public bridge synthetic toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/SliderSkin$2;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/skin/SliderSkin$2;->toString(Ljava/lang/Number;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/SliderSkin$2;
    return-object v0
.end method

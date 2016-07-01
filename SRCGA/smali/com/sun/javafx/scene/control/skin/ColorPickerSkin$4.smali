.class Lcom/sun/javafx/scene/control/skin/ColorPickerSkin$4;
.super Ljavafx/css/StyleableDoubleProperty;
.source "ColorPickerSkin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;


# direct methods
.method constructor <init>(Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;D)V
    .locals 8

    .prologue
    .line 139
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ColorPickerSkin$4;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;
    move-wide v2, p2

    .local v2, "x0":D
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin$4;->this$0:Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;

    move-object v4, v0

    move-wide v5, v2

    invoke-direct {v4, v5, v6}, Ljavafx/css/StyleableDoubleProperty;-><init>(D)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 147
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ColorPickerSkin$4;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin$4;->this$0:Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ColorPickerSkin$4;
    return-object v0
.end method

.method public getCssMetaData()Ljavafx/css/CssMetaData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/control/ColorPicker;",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ColorPickerSkin$4;
    # getter for: Lcom/sun/javafx/scene/control/skin/ColorPickerSkin$StyleableProperties;->COLOR_RECT_HEIGHT:Ljavafx/css/CssMetaData;
    invoke-static {}, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin$StyleableProperties;->access$500()Ljavafx/css/CssMetaData;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ColorPickerSkin$4;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ColorPickerSkin$4;
    const-string v1, "colorRectHeight"

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ColorPickerSkin$4;
    return-object v0
.end method

.method protected invalidated()V
    .locals 2

    .prologue
    .line 141
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ColorPickerSkin$4;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin$4;->this$0:Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;

    invoke-static {v1}, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->access$200(Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;)Ljavafx/scene/layout/StackPane;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin$4;->this$0:Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;

    invoke-static {v1}, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->access$200(Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;)Ljavafx/scene/layout/StackPane;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/scene/layout/StackPane;->requestLayout()V

    .line 142
    :cond_0
    return-void
.end method

.class Lcom/sun/javafx/scene/control/skin/ColorPickerSkin$1;
.super Ljavafx/css/StyleableBooleanProperty;
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
.method constructor <init>(Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;Z)V
    .locals 5

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ColorPickerSkin$1;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;
    move v2, p2

    .local v2, "x0":Z
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin$1;->this$0:Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;

    move-object v3, v0

    move v4, v2

    invoke-direct {v3, v4}, Ljavafx/css/StyleableBooleanProperty;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ColorPickerSkin$1;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin$1;->this$0:Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ColorPickerSkin$1;
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
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ColorPickerSkin$1;
    # getter for: Lcom/sun/javafx/scene/control/skin/ColorPickerSkin$StyleableProperties;->COLOR_LABEL_VISIBLE:Ljavafx/css/CssMetaData;
    invoke-static {}, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin$StyleableProperties;->access$100()Ljavafx/css/CssMetaData;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ColorPickerSkin$1;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ColorPickerSkin$1;
    const-string v1, "colorLabelVisible"

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ColorPickerSkin$1;
    return-object v0
.end method

.method public invalidated()V
    .locals 3

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ColorPickerSkin$1;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin$1;->this$0:Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;

    invoke-static {v1}, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->access$000(Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;)Ljavafx/scene/control/Label;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 82
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin$1;->this$0:Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->colorLabelVisible:Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 83
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin$1;->this$0:Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;

    invoke-static {v1}, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->access$000(Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;)Ljavafx/scene/control/Label;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin$1;->this$0:Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/ColorPicker;

    invoke-virtual {v2}, Ljavafx/scene/control/ColorPicker;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavafx/scene/paint/Color;

    invoke-static {v2}, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->colorDisplayName(Ljavafx/scene/paint/Color;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavafx/scene/control/Label;->setText(Ljava/lang/String;)V

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin$1;->this$0:Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;

    invoke-static {v1}, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->access$000(Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;)Ljavafx/scene/control/Label;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljavafx/scene/control/Label;->setText(Ljava/lang/String;)V

    goto :goto_0
.end method

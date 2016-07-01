.class public Ljavafx/scene/control/ColorPicker;
.super Ljavafx/scene/control/ComboBoxBase;
.source "ColorPicker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/scene/control/ComboBoxBase",
        "<",
        "Ljavafx/scene/paint/Color;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_STYLE_CLASS:Ljava/lang/String; = "color-picker"

.field public static final STYLE_CLASS_BUTTON:Ljava/lang/String; = "button"

.field public static final STYLE_CLASS_SPLIT_BUTTON:Ljava/lang/String; = "split-button"


# instance fields
.field private customColors:Ljavafx/collections/ObservableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/scene/paint/Color;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ColorPicker;
    move-object v1, v0

    sget-object v2, Ljavafx/scene/paint/Color;->WHITE:Ljavafx/scene/paint/Color;

    invoke-direct {v1, v2}, Ljavafx/scene/control/ColorPicker;-><init>(Ljavafx/scene/paint/Color;)V

    .line 108
    return-void
.end method

.method public constructor <init>(Ljavafx/scene/paint/Color;)V
    .locals 4

    .prologue
    .line 114
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ColorPicker;
    move-object v1, p1

    .local v1, "color":Ljavafx/scene/paint/Color;
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/control/ComboBoxBase;-><init>()V

    .line 95
    move-object v2, v0

    invoke-static {}, Ljavafx/collections/FXCollections;->observableArrayList()Ljavafx/collections/ObservableList;

    move-result-object v3

    iput-object v3, v2, Ljavafx/scene/control/ColorPicker;->customColors:Ljavafx/collections/ObservableList;

    .line 115
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/ColorPicker;->setValue(Ljava/lang/Object;)V

    .line 116
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/ColorPicker;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v2

    const-string v3, "color-picker"

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 117
    return-void
.end method


# virtual methods
.method protected createDefaultSkin()Ljavafx/scene/control/Skin;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/Skin",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 127
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ColorPicker;
    new-instance v1, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;-><init>(Ljavafx/scene/control/ColorPicker;)V

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ColorPicker;
    return-object v0
.end method

.method public final getCustomColors()Ljavafx/collections/ObservableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/scene/paint/Color;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ColorPicker;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ColorPicker;->customColors:Ljavafx/collections/ObservableList;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ColorPicker;
    return-object v0
.end method

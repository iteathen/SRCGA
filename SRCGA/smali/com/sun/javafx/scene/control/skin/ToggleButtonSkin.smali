.class public Lcom/sun/javafx/scene/control/skin/ToggleButtonSkin;
.super Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;
.source "ToggleButtonSkin.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/javafx/scene/control/skin/LabeledSkinBase",
        "<",
        "Ljavafx/scene/control/ToggleButton;",
        "Lcom/sun/javafx/scene/control/behavior/ToggleButtonBehavior",
        "<",
        "Ljavafx/scene/control/ToggleButton;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljavafx/scene/control/ToggleButton;)V
    .locals 8

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ToggleButtonSkin;
    move-object v1, p1

    .local v1, "toggleButton":Ljavafx/scene/control/ToggleButton;
    move-object v2, v0

    move-object v3, v1

    new-instance v4, Lcom/sun/javafx/scene/control/behavior/ToggleButtonBehavior;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    invoke-direct {v5, v6}, Lcom/sun/javafx/scene/control/behavior/ToggleButtonBehavior;-><init>(Ljavafx/scene/control/ToggleButton;)V

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;-><init>(Ljavafx/scene/control/Labeled;Lcom/sun/javafx/scene/control/behavior/BehaviorBase;)V

    .line 35
    return-void
.end method

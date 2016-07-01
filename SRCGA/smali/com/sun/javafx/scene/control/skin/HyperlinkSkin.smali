.class public Lcom/sun/javafx/scene/control/skin/HyperlinkSkin;
.super Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;
.source "HyperlinkSkin.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/javafx/scene/control/skin/LabeledSkinBase",
        "<",
        "Ljavafx/scene/control/Hyperlink;",
        "Lcom/sun/javafx/scene/control/behavior/ButtonBehavior",
        "<",
        "Ljavafx/scene/control/Hyperlink;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljavafx/scene/control/Hyperlink;)V
    .locals 8

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/HyperlinkSkin;
    move-object v1, p1

    .local v1, "link":Ljavafx/scene/control/Hyperlink;
    move-object v2, v0

    move-object v3, v1

    new-instance v4, Lcom/sun/javafx/scene/control/behavior/ButtonBehavior;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    invoke-direct {v5, v6}, Lcom/sun/javafx/scene/control/behavior/ButtonBehavior;-><init>(Ljavafx/scene/control/ButtonBase;)V

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;-><init>(Ljavafx/scene/control/Labeled;Lcom/sun/javafx/scene/control/behavior/BehaviorBase;)V

    .line 45
    return-void
.end method

.class public Lcom/sun/javafx/scene/control/skin/LabelSkin;
.super Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;
.source "LabelSkin.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/javafx/scene/control/skin/LabeledSkinBase",
        "<",
        "Ljavafx/scene/control/Label;",
        "Lcom/sun/javafx/scene/control/behavior/BehaviorBase",
        "<",
        "Ljavafx/scene/control/Label;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljavafx/scene/control/Label;)V
    .locals 9

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/LabelSkin;
    move-object v1, p1

    .local v1, "label":Ljavafx/scene/control/Label;
    move-object v2, v0

    move-object v3, v1

    new-instance v4, Lcom/sun/javafx/scene/control/behavior/BehaviorBase;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/sun/javafx/scene/control/behavior/BehaviorBase;-><init>(Ljavafx/scene/control/Control;Ljava/util/List;)V

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;-><init>(Ljavafx/scene/control/Labeled;Lcom/sun/javafx/scene/control/behavior/BehaviorBase;)V

    .line 42
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/skin/LabelSkin;->consumeMouseEvents(Z)V

    .line 44
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/Label;->labelForProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v3

    const-string v4, "LABEL_FOR"

    invoke-virtual {v2, v3, v4}, Lcom/sun/javafx/scene/control/skin/LabelSkin;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 45
    return-void
.end method


# virtual methods
.method protected handleControlPropertyChanged(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/LabelSkin;
    move-object v1, p1

    .local v1, "p":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->handleControlPropertyChanged(Ljava/lang/String;)V

    .line 50
    const-string v2, "LABEL_FOR"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 51
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/LabelSkin;->mnemonicTargetChanged()V

    .line 53
    :cond_0
    return-void
.end method

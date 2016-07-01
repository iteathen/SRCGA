.class Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin$2;
.super Ljavafx/scene/layout/StackPane;
.source "TabPaneSkin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;-><init>(Lcom/sun/javafx/scene/control/skin/TabPaneSkin;Ljavafx/scene/control/Tab;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;

.field final synthetic val$this$0:Lcom/sun/javafx/scene/control/skin/TabPaneSkin;


# direct methods
.method constructor <init>(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;Lcom/sun/javafx/scene/control/skin/TabPaneSkin;)V
    .locals 5

    .prologue
    .line 1149
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin$2;
    move-object v1, p1

    .local v1, "this$1":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;
    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin$2;->this$1:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin$2;->val$this$0:Lcom/sun/javafx/scene/control/skin/TabPaneSkin;

    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/layout/StackPane;-><init>()V

    return-void
.end method


# virtual methods
.method protected computePrefHeight(D)D
    .locals 7

    .prologue
    .line 1154
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin$2;
    move-wide v2, p1

    .local v2, "w":D
    sget v4, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->CLOSE_BTN_SIZE:I

    int-to-double v4, v4

    move-wide v1, v4

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin$2;
    return-wide v1
.end method

.method protected computePrefWidth(D)D
    .locals 7

    .prologue
    .line 1151
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin$2;
    move-wide v2, p1

    .local v2, "h":D
    sget v4, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->CLOSE_BTN_SIZE:I

    int-to-double v4, v4

    move-wide v1, v4

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin$2;
    return-wide v1
.end method

.method public varargs executeAccessibleAction(Ljavafx/scene/AccessibleAction;[Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 1158
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin$2;
    move-object v1, p1

    .local v1, "action":Ljavafx/scene/AccessibleAction;
    move-object v2, p2

    .local v2, "parameters":[Ljava/lang/Object;
    sget-object v5, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$3;->$SwitchMap$javafx$scene$AccessibleAction:[I

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/AccessibleAction;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 1167
    :cond_0
    :goto_0
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-super {v5, v6, v7}, Ljavafx/scene/layout/StackPane;->executeAccessibleAction(Ljavafx/scene/AccessibleAction;[Ljava/lang/Object;)V

    .line 1169
    return-void

    .line 1160
    :pswitch_0
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin$2;->this$1:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->getTab()Ljavafx/scene/control/Tab;

    move-result-object v5

    move-object v3, v5

    .line 1161
    .local v3, "tab":Ljavafx/scene/control/Tab;
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin$2;->this$1:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->this$0:Lcom/sun/javafx/scene/control/skin/TabPaneSkin;

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->getBehavior()Lcom/sun/javafx/scene/control/behavior/BehaviorBase;

    move-result-object v5

    check-cast v5, Lcom/sun/javafx/scene/control/behavior/TabPaneBehavior;

    move-object v4, v5

    .line 1162
    .local v4, "behavior":Lcom/sun/javafx/scene/control/behavior/TabPaneBehavior;
    move-object v5, v4

    move-object v6, v3

    invoke-virtual {v5, v6}, Lcom/sun/javafx/scene/control/behavior/TabPaneBehavior;->canCloseTab(Ljavafx/scene/control/Tab;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1163
    move-object v5, v4

    move-object v6, v3

    invoke-virtual {v5, v6}, Lcom/sun/javafx/scene/control/behavior/TabPaneBehavior;->closeTab(Ljavafx/scene/control/Tab;)V

    .line 1164
    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin$2;->setOnMousePressed(Ljavafx/event/EventHandler;)V

    goto :goto_0

    .line 1158
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

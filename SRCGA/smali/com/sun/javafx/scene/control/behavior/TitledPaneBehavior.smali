.class public Lcom/sun/javafx/scene/control/behavior/TitledPaneBehavior;
.super Lcom/sun/javafx/scene/control/behavior/BehaviorBase;
.source "TitledPaneBehavior.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/javafx/scene/control/behavior/BehaviorBase",
        "<",
        "Ljavafx/scene/control/TitledPane;",
        ">;"
    }
.end annotation


# static fields
.field private static final PRESS_ACTION:Ljava/lang/String; = "Press"

.field protected static final TITLEDPANE_BINDINGS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sun/javafx/scene/control/behavior/KeyBinding;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private titledPane:Ljavafx/scene/control/TitledPane;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 51
    new-instance v0, Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sun/javafx/scene/control/behavior/TitledPaneBehavior;->TITLEDPANE_BINDINGS:Ljava/util/List;

    .line 56
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/TitledPaneBehavior;->TITLEDPANE_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->SPACE:Ljavafx/scene/input/KeyCode;

    const-string v4, "Press"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 57
    return-void
.end method

.method public constructor <init>(Ljavafx/scene/control/TitledPane;)V
    .locals 5

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TitledPaneBehavior;
    move-object v1, p1

    .local v1, "pane":Ljavafx/scene/control/TitledPane;
    move-object v2, v0

    move-object v3, v1

    sget-object v4, Lcom/sun/javafx/scene/control/behavior/TitledPaneBehavior;->TITLEDPANE_BINDINGS:Ljava/util/List;

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/BehaviorBase;-><init>(Ljavafx/scene/control/Control;Ljava/util/List;)V

    .line 40
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/control/behavior/TitledPaneBehavior;->titledPane:Ljavafx/scene/control/TitledPane;

    .line 41
    return-void
.end method


# virtual methods
.method protected callAction(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TitledPaneBehavior;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v4, v1

    move-object v2, v4

    const/4 v4, -0x1

    move v3, v4

    move-object v4, v2

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :cond_0
    :goto_0
    move v4, v3

    packed-switch v4, :pswitch_data_1

    .line 68
    move-object v4, v0

    move-object v5, v1

    invoke-super {v4, v5}, Lcom/sun/javafx/scene/control/behavior/BehaviorBase;->callAction(Ljava/lang/String;)V

    .line 70
    :cond_1
    :goto_1
    return-void

    .line 60
    :pswitch_0
    move-object v4, v2

    const-string v5, "Press"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    move v3, v4

    goto :goto_0

    .line 62
    :pswitch_1
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/behavior/TitledPaneBehavior;->titledPane:Ljavafx/scene/control/TitledPane;

    invoke-virtual {v4}, Ljavafx/scene/control/TitledPane;->isCollapsible()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/behavior/TitledPaneBehavior;->titledPane:Ljavafx/scene/control/TitledPane;

    invoke-virtual {v4}, Ljavafx/scene/control/TitledPane;->isFocused()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 63
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/behavior/TitledPaneBehavior;->titledPane:Ljavafx/scene/control/TitledPane;

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/behavior/TitledPaneBehavior;->titledPane:Ljavafx/scene/control/TitledPane;

    invoke-virtual {v5}, Ljavafx/scene/control/TitledPane;->isExpanded()Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v5, 0x1

    :goto_2
    invoke-virtual {v4, v5}, Ljavafx/scene/control/TitledPane;->setExpanded(Z)V

    .line 64
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/behavior/TitledPaneBehavior;->titledPane:Ljavafx/scene/control/TitledPane;

    invoke-virtual {v4}, Ljavafx/scene/control/TitledPane;->requestFocus()V

    goto :goto_1

    .line 63
    :cond_2
    const/4 v5, 0x0

    goto :goto_2

    .line 60
    nop

    :pswitch_data_0
    .packed-switch 0x49cb423
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public collapse()V
    .locals 3

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TitledPaneBehavior;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/behavior/TitledPaneBehavior;->titledPane:Ljavafx/scene/control/TitledPane;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljavafx/scene/control/TitledPane;->setExpanded(Z)V

    .line 94
    return-void
.end method

.method public expand()V
    .locals 3

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TitledPaneBehavior;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/behavior/TitledPaneBehavior;->titledPane:Ljavafx/scene/control/TitledPane;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljavafx/scene/control/TitledPane;->setExpanded(Z)V

    .line 90
    return-void
.end method

.method public mousePressed(Ljavafx/scene/input/MouseEvent;)V
    .locals 5

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TitledPaneBehavior;
    move-object v1, p1

    .local v1, "e":Ljavafx/scene/input/MouseEvent;
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Lcom/sun/javafx/scene/control/behavior/BehaviorBase;->mousePressed(Ljavafx/scene/input/MouseEvent;)V

    .line 80
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/TitledPaneBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/TitledPane;

    move-object v2, v3

    .line 81
    .local v2, "tp":Ljavafx/scene/control/TitledPane;
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/control/TitledPane;->requestFocus()V

    .line 82
    return-void
.end method

.method public toggle()V
    .locals 3

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TitledPaneBehavior;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/behavior/TitledPaneBehavior;->titledPane:Ljavafx/scene/control/TitledPane;

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/behavior/TitledPaneBehavior;->titledPane:Ljavafx/scene/control/TitledPane;

    invoke-virtual {v2}, Ljavafx/scene/control/TitledPane;->isExpanded()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v1, v2}, Ljavafx/scene/control/TitledPane;->setExpanded(Z)V

    .line 98
    return-void

    .line 97
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

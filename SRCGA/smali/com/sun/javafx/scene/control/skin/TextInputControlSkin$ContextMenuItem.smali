.class Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$ContextMenuItem;
.super Ljavafx/scene/control/MenuItem;
.source "TextInputControlSkin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ContextMenuItem"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;


# direct methods
.method constructor <init>(Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 667
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$ContextMenuItem;, "Lcom/sun/javafx/scene/control/skin/TextInputControlSkin<TT;TB;>.ContextMenuItem;"
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;
    move-object v2, p2

    .local v2, "action":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$ContextMenuItem;->this$0:Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;

    .line 668
    move-object v3, v0

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TextInputControl.menu."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sun/javafx/scene/control/skin/resources/ControlResources;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljavafx/scene/control/MenuItem;-><init>(Ljava/lang/String;)V

    .line 669
    move-object v3, v0

    move-object v4, v0

    move-object v5, v2

    invoke-static {v4, v5}, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$ContextMenuItem$$Lambda$1;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$ContextMenuItem;Ljava/lang/String;)Ljavafx/event/EventHandler;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$ContextMenuItem;->setOnAction(Ljavafx/event/EventHandler;)V

    .line 672
    return-void
.end method

.method static synthetic access$lambda$0(Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$ContextMenuItem;Ljava/lang/String;Ljavafx/event/ActionEvent;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$ContextMenuItem;->lambda$new$193(Ljava/lang/String;Ljavafx/event/ActionEvent;)V

    return-void
.end method

.method private synthetic lambda$new$193(Ljava/lang/String;Ljavafx/event/ActionEvent;)V
    .locals 5

    .prologue
    .line 670
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$ContextMenuItem;, "Lcom/sun/javafx/scene/control/skin/TextInputControlSkin<TT;TB;>.ContextMenuItem;"
    move-object v1, p1

    .local v1, "action":Ljava/lang/String;
    move-object v2, p2

    .local v2, "e":Ljavafx/event/ActionEvent;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$ContextMenuItem;->this$0:Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->getBehavior()Lcom/sun/javafx/scene/control/behavior/BehaviorBase;

    move-result-object v3

    check-cast v3, Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;->callAction(Ljava/lang/String;)V

    .line 671
    return-void
.end method

.class Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase$MenuLabeledImpl;
.super Lcom/sun/javafx/scene/control/skin/LabeledImpl;
.source "MenuButtonSkinBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuLabeledImpl"
.end annotation


# instance fields
.field button:Ljavafx/scene/control/MenuButton;

.field final synthetic this$0:Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase;


# direct methods
.method public constructor <init>(Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase;Ljavafx/scene/control/MenuButton;)V
    .locals 6

    .prologue
    .line 281
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase$MenuLabeledImpl;, "Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase<TC;TB;>.MenuLabeledImpl;"
    move-object v1, p1

    move-object v2, p2

    .local v2, "b":Ljavafx/scene/control/MenuButton;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase$MenuLabeledImpl;->this$0:Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase;

    .line 282
    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Lcom/sun/javafx/scene/control/skin/LabeledImpl;-><init>(Ljavafx/scene/control/Labeled;)V

    .line 283
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase$MenuLabeledImpl;->button:Ljavafx/scene/control/MenuButton;

    .line 284
    move-object v3, v0

    sget-object v4, Ljavafx/event/ActionEvent;->ACTION:Ljavafx/event/EventType;

    move-object v5, v0

    invoke-static {v5}, Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase$MenuLabeledImpl$$Lambda$1;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase$MenuLabeledImpl;)Ljavafx/event/EventHandler;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase$MenuLabeledImpl;->addEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 288
    return-void
.end method

.method static synthetic access$lambda$0(Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase$MenuLabeledImpl;Ljavafx/event/ActionEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase$MenuLabeledImpl;->lambda$new$410(Ljavafx/event/ActionEvent;)V

    return-void
.end method

.method private synthetic lambda$new$410(Ljavafx/event/ActionEvent;)V
    .locals 6

    .prologue
    .line 285
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase$MenuLabeledImpl;, "Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase<TC;TB;>.MenuLabeledImpl;"
    move-object v1, p1

    .local v1, "e":Ljavafx/event/ActionEvent;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/MenuButtonSkinBase$MenuLabeledImpl;->button:Ljavafx/scene/control/MenuButton;

    new-instance v3, Ljavafx/event/ActionEvent;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljavafx/event/ActionEvent;-><init>()V

    invoke-virtual {v2, v3}, Ljavafx/scene/control/MenuButton;->fireEvent(Ljavafx/event/Event;)V

    .line 286
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/event/ActionEvent;->consume()V

    .line 287
    return-void
.end method

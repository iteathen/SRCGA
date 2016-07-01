.class Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$9;
.super Ljavafx/beans/binding/BooleanBinding;
.source "TextInputControlSkin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;-><init>(Ljavafx/scene/control/TextInputControl;Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;

.field final synthetic val$textInput:Ljavafx/scene/control/TextInputControl;


# direct methods
.method constructor <init>(Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;Ljavafx/scene/control/TextInputControl;)V
    .locals 9

    .prologue
    .line 318
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$9;, "Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$9;"
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;
    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$9;->this$0:Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$9;->val$textInput:Ljavafx/scene/control/TextInputControl;

    move-object v3, v0

    invoke-direct {v3}, Ljavafx/beans/binding/BooleanBinding;-><init>()V

    .line 319
    move-object v3, v0

    const/4 v4, 0x5

    new-array v4, v4, [Ljavafx/beans/Observable;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$9;->val$textInput:Ljavafx/scene/control/TextInputControl;

    invoke-virtual {v7}, Ljavafx/scene/control/TextInputControl;->focusedProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;

    move-result-object v7

    aput-object v7, v5, v6

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x1

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$9;->val$textInput:Ljavafx/scene/control/TextInputControl;

    invoke-virtual {v7}, Ljavafx/scene/control/TextInputControl;->anchorProperty()Ljavafx/beans/property/ReadOnlyIntegerProperty;

    move-result-object v7

    aput-object v7, v5, v6

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x2

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$9;->val$textInput:Ljavafx/scene/control/TextInputControl;

    invoke-virtual {v7}, Ljavafx/scene/control/TextInputControl;->caretPositionProperty()Ljavafx/beans/property/ReadOnlyIntegerProperty;

    move-result-object v7

    aput-object v7, v5, v6

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x3

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$9;->val$textInput:Ljavafx/scene/control/TextInputControl;

    .line 320
    invoke-virtual {v7}, Ljavafx/scene/control/TextInputControl;->disabledProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;

    move-result-object v7

    aput-object v7, v5, v6

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x4

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$9;->this$0:Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->displayCaret:Ljavafx/beans/property/BooleanProperty;

    aput-object v7, v5, v6

    .line 319
    invoke-virtual {v3, v4}, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$9;->bind([Ljavafx/beans/Observable;)V

    .line 320
    return-void
.end method


# virtual methods
.method protected computeValue()Z
    .locals 3

    .prologue
    .line 322
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$9;, "Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$9;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$9;->this$0:Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->displayCaret:Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$9;->val$textInput:Ljavafx/scene/control/TextInputControl;

    invoke-virtual {v1}, Ljavafx/scene/control/TextInputControl;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$9;->val$textInput:Ljavafx/scene/control/TextInputControl;

    .line 323
    invoke-virtual {v1}, Ljavafx/scene/control/TextInputControl;->getCaretPosition()I

    move-result v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$9;->val$textInput:Ljavafx/scene/control/TextInputControl;

    invoke-virtual {v2}, Ljavafx/scene/control/TextInputControl;->getAnchor()I

    move-result v2

    if-eq v1, v2, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$9;->val$textInput:Ljavafx/scene/control/TextInputControl;

    .line 324
    invoke-virtual {v1}, Ljavafx/scene/control/TextInputControl;->isDisabled()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$9;, "Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$9;"
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$9;, "Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$9;"
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

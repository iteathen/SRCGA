.class Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl$3;
.super Ljava/lang/Object;
.source "ComboBoxPopupControl.java"

# interfaces
.implements Lcom/sun/javafx/scene/input/ExtendedInputMethodRequests;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;->updateEditable()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;

.field final synthetic val$newTextField:Ljavafx/scene/control/TextField;


# direct methods
.method constructor <init>(Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;Ljavafx/scene/control/TextField;)V
    .locals 5

    .prologue
    .line 477
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl$3;, "Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl$3;"
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;
    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl$3;->this$0:Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl$3;->val$newTextField:Ljavafx/scene/control/TextField;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelLatestCommittedText()V
    .locals 2

    .prologue
    .line 487
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl$3;, "Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl$3;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl$3;->val$newTextField:Ljavafx/scene/control/TextField;

    invoke-virtual {v1}, Ljavafx/scene/control/TextField;->getInputMethodRequests()Ljavafx/scene/input/InputMethodRequests;

    move-result-object v1

    invoke-interface {v1}, Ljavafx/scene/input/InputMethodRequests;->cancelLatestCommittedText()V

    .line 488
    return-void
.end method

.method public getCommittedText(II)Ljava/lang/String;
    .locals 6

    .prologue
    .line 499
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl$3;, "Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl$3;"
    move v1, p1

    .local v1, "begin":I
    move v2, p2

    .local v2, "end":I
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl$3;->val$newTextField:Ljavafx/scene/control/TextField;

    invoke-virtual {v3}, Ljavafx/scene/control/TextField;->getInputMethodRequests()Ljavafx/scene/input/InputMethodRequests;

    move-result-object v3

    check-cast v3, Lcom/sun/javafx/scene/input/ExtendedInputMethodRequests;

    move v4, v1

    move v5, v2

    invoke-interface {v3, v4, v5}, Lcom/sun/javafx/scene/input/ExtendedInputMethodRequests;->getCommittedText(II)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl$3;, "Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl$3;"
    return-object v0
.end method

.method public getCommittedTextLength()I
    .locals 2

    .prologue
    .line 503
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl$3;, "Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl$3;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl$3;->val$newTextField:Ljavafx/scene/control/TextField;

    invoke-virtual {v1}, Ljavafx/scene/control/TextField;->getInputMethodRequests()Ljavafx/scene/input/InputMethodRequests;

    move-result-object v1

    check-cast v1, Lcom/sun/javafx/scene/input/ExtendedInputMethodRequests;

    invoke-interface {v1}, Lcom/sun/javafx/scene/input/ExtendedInputMethodRequests;->getCommittedTextLength()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl$3;, "Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl$3;"
    return v0
.end method

.method public getInsertPositionOffset()I
    .locals 2

    .prologue
    .line 495
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl$3;, "Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl$3;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl$3;->val$newTextField:Ljavafx/scene/control/TextField;

    invoke-virtual {v1}, Ljavafx/scene/control/TextField;->getInputMethodRequests()Ljavafx/scene/input/InputMethodRequests;

    move-result-object v1

    check-cast v1, Lcom/sun/javafx/scene/input/ExtendedInputMethodRequests;

    invoke-interface {v1}, Lcom/sun/javafx/scene/input/ExtendedInputMethodRequests;->getInsertPositionOffset()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl$3;, "Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl$3;"
    return v0
.end method

.method public getLocationOffset(II)I
    .locals 6

    .prologue
    .line 483
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl$3;, "Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl$3;"
    move v1, p1

    .local v1, "x":I
    move v2, p2

    .local v2, "y":I
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl$3;->val$newTextField:Ljavafx/scene/control/TextField;

    invoke-virtual {v3}, Ljavafx/scene/control/TextField;->getInputMethodRequests()Ljavafx/scene/input/InputMethodRequests;

    move-result-object v3

    move v4, v1

    move v5, v2

    invoke-interface {v3, v4, v5}, Ljavafx/scene/input/InputMethodRequests;->getLocationOffset(II)I

    move-result v3

    move v0, v3

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl$3;, "Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl$3;"
    return v0
.end method

.method public getSelectedText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 491
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl$3;, "Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl$3;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl$3;->val$newTextField:Ljavafx/scene/control/TextField;

    invoke-virtual {v1}, Ljavafx/scene/control/TextField;->getInputMethodRequests()Ljavafx/scene/input/InputMethodRequests;

    move-result-object v1

    invoke-interface {v1}, Ljavafx/scene/input/InputMethodRequests;->getSelectedText()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl$3;, "Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl$3;"
    return-object v0
.end method

.method public getTextLocation(I)Ljavafx/geometry/Point2D;
    .locals 4

    .prologue
    .line 479
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl$3;, "Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl$3;"
    move v1, p1

    .local v1, "offset":I
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl$3;->val$newTextField:Ljavafx/scene/control/TextField;

    invoke-virtual {v2}, Ljavafx/scene/control/TextField;->getInputMethodRequests()Ljavafx/scene/input/InputMethodRequests;

    move-result-object v2

    move v3, v1

    invoke-interface {v2, v3}, Ljavafx/scene/input/InputMethodRequests;->getTextLocation(I)Ljavafx/geometry/Point2D;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl$3;, "Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl$3;"
    return-object v0
.end method

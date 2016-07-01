.class Ljavafx/scene/Scene$InputMethodRequestsDelegate;
.super Ljava/lang/Object;
.source "Scene.java"

# interfaces
.implements Lcom/sun/javafx/scene/input/ExtendedInputMethodRequests;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/Scene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InputMethodRequestsDelegate"
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/Scene;


# direct methods
.method constructor <init>(Ljavafx/scene/Scene;)V
    .locals 4

    .prologue
    .line 4010
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene$InputMethodRequestsDelegate;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/Scene;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/Scene$InputMethodRequestsDelegate;->this$0:Ljavafx/scene/Scene;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getClientRequests()Ljavafx/scene/input/InputMethodRequests;
    .locals 3

    .prologue
    .line 4076
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene$InputMethodRequestsDelegate;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Scene$InputMethodRequestsDelegate;->this$0:Ljavafx/scene/Scene;

    invoke-virtual {v2}, Ljavafx/scene/Scene;->getFocusOwner()Ljavafx/scene/Node;

    move-result-object v2

    move-object v1, v2

    .line 4077
    .local v1, "focusOwner":Ljavafx/scene/Node;
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 4078
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/Node;->getInputMethodRequests()Ljavafx/scene/input/InputMethodRequests;

    move-result-object v2

    move-object v0, v2

    .line 4080
    .end local v0    # "this":Ljavafx/scene/Scene$InputMethodRequestsDelegate;
    :goto_0
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/Scene$InputMethodRequestsDelegate;
    :cond_0
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method


# virtual methods
.method public cancelLatestCommittedText()V
    .locals 3

    .prologue
    .line 4033
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene$InputMethodRequestsDelegate;
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/Scene$InputMethodRequestsDelegate;->getClientRequests()Ljavafx/scene/input/InputMethodRequests;

    move-result-object v2

    move-object v1, v2

    .line 4034
    .local v1, "requests":Ljavafx/scene/input/InputMethodRequests;
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 4035
    move-object v2, v1

    invoke-interface {v2}, Ljavafx/scene/input/InputMethodRequests;->cancelLatestCommittedText()V

    .line 4037
    :cond_0
    return-void
.end method

.method public getCommittedText(II)Ljava/lang/String;
    .locals 7

    .prologue
    .line 4059
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene$InputMethodRequestsDelegate;
    move v1, p1

    .local v1, "begin":I
    move v2, p2

    .local v2, "end":I
    move-object v4, v0

    invoke-direct {v4}, Ljavafx/scene/Scene$InputMethodRequestsDelegate;->getClientRequests()Ljavafx/scene/input/InputMethodRequests;

    move-result-object v4

    move-object v3, v4

    .line 4060
    .local v3, "requests":Ljavafx/scene/input/InputMethodRequests;
    move-object v4, v3

    if-eqz v4, :cond_0

    move-object v4, v3

    instance-of v4, v4, Lcom/sun/javafx/scene/input/ExtendedInputMethodRequests;

    if-eqz v4, :cond_0

    .line 4061
    move-object v4, v3

    check-cast v4, Lcom/sun/javafx/scene/input/ExtendedInputMethodRequests;

    move v5, v1

    move v6, v2

    invoke-interface {v4, v5, v6}, Lcom/sun/javafx/scene/input/ExtendedInputMethodRequests;->getCommittedText(II)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .line 4063
    .end local v0    # "this":Ljavafx/scene/Scene$InputMethodRequestsDelegate;
    :goto_0
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/Scene$InputMethodRequestsDelegate;
    :cond_0
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_0
.end method

.method public getCommittedTextLength()I
    .locals 3

    .prologue
    .line 4068
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene$InputMethodRequestsDelegate;
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/Scene$InputMethodRequestsDelegate;->getClientRequests()Ljavafx/scene/input/InputMethodRequests;

    move-result-object v2

    move-object v1, v2

    .line 4069
    .local v1, "requests":Ljavafx/scene/input/InputMethodRequests;
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    instance-of v2, v2, Lcom/sun/javafx/scene/input/ExtendedInputMethodRequests;

    if-eqz v2, :cond_0

    .line 4070
    move-object v2, v1

    check-cast v2, Lcom/sun/javafx/scene/input/ExtendedInputMethodRequests;

    invoke-interface {v2}, Lcom/sun/javafx/scene/input/ExtendedInputMethodRequests;->getCommittedTextLength()I

    move-result v2

    move v0, v2

    .line 4072
    .end local v0    # "this":Ljavafx/scene/Scene$InputMethodRequestsDelegate;
    :goto_0
    return v0

    .restart local v0    # "this":Ljavafx/scene/Scene$InputMethodRequestsDelegate;
    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public getInsertPositionOffset()I
    .locals 3

    .prologue
    .line 4050
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene$InputMethodRequestsDelegate;
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/Scene$InputMethodRequestsDelegate;->getClientRequests()Ljavafx/scene/input/InputMethodRequests;

    move-result-object v2

    move-object v1, v2

    .line 4051
    .local v1, "requests":Ljavafx/scene/input/InputMethodRequests;
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    instance-of v2, v2, Lcom/sun/javafx/scene/input/ExtendedInputMethodRequests;

    if-eqz v2, :cond_0

    .line 4052
    move-object v2, v1

    check-cast v2, Lcom/sun/javafx/scene/input/ExtendedInputMethodRequests;

    invoke-interface {v2}, Lcom/sun/javafx/scene/input/ExtendedInputMethodRequests;->getInsertPositionOffset()I

    move-result v2

    move v0, v2

    .line 4054
    .end local v0    # "this":Ljavafx/scene/Scene$InputMethodRequestsDelegate;
    :goto_0
    return v0

    .restart local v0    # "this":Ljavafx/scene/Scene$InputMethodRequestsDelegate;
    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public getLocationOffset(II)I
    .locals 7

    .prologue
    .line 4023
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene$InputMethodRequestsDelegate;
    move v1, p1

    .local v1, "x":I
    move v2, p2

    .local v2, "y":I
    move-object v4, v0

    invoke-direct {v4}, Ljavafx/scene/Scene$InputMethodRequestsDelegate;->getClientRequests()Ljavafx/scene/input/InputMethodRequests;

    move-result-object v4

    move-object v3, v4

    .line 4024
    .local v3, "requests":Ljavafx/scene/input/InputMethodRequests;
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 4025
    move-object v4, v3

    move v5, v1

    move v6, v2

    invoke-interface {v4, v5, v6}, Ljavafx/scene/input/InputMethodRequests;->getLocationOffset(II)I

    move-result v4

    move v0, v4

    .line 4027
    .end local v0    # "this":Ljavafx/scene/Scene$InputMethodRequestsDelegate;
    :goto_0
    return v0

    .restart local v0    # "this":Ljavafx/scene/Scene$InputMethodRequestsDelegate;
    :cond_0
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0
.end method

.method public getSelectedText()Ljava/lang/String;
    .locals 3

    .prologue
    .line 4041
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene$InputMethodRequestsDelegate;
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/Scene$InputMethodRequestsDelegate;->getClientRequests()Ljavafx/scene/input/InputMethodRequests;

    move-result-object v2

    move-object v1, v2

    .line 4042
    .local v1, "requests":Ljavafx/scene/input/InputMethodRequests;
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 4043
    move-object v2, v1

    invoke-interface {v2}, Ljavafx/scene/input/InputMethodRequests;->getSelectedText()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 4045
    .end local v0    # "this":Ljavafx/scene/Scene$InputMethodRequestsDelegate;
    :goto_0
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/Scene$InputMethodRequestsDelegate;
    :cond_0
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method

.method public getTextLocation(I)Ljavafx/geometry/Point2D;
    .locals 11

    .prologue
    .line 4013
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/Scene$InputMethodRequestsDelegate;
    move v2, p1

    .local v2, "offset":I
    move-object v4, v1

    invoke-direct {v4}, Ljavafx/scene/Scene$InputMethodRequestsDelegate;->getClientRequests()Ljavafx/scene/input/InputMethodRequests;

    move-result-object v4

    move-object v3, v4

    .line 4014
    .local v3, "requests":Ljavafx/scene/input/InputMethodRequests;
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 4015
    move-object v4, v3

    move v5, v2

    invoke-interface {v4, v5}, Ljavafx/scene/input/InputMethodRequests;->getTextLocation(I)Ljavafx/geometry/Point2D;

    move-result-object v4

    move-object v1, v4

    .line 4017
    .end local v1    # "this":Ljavafx/scene/Scene$InputMethodRequestsDelegate;
    :goto_0
    return-object v1

    .restart local v1    # "this":Ljavafx/scene/Scene$InputMethodRequestsDelegate;
    :cond_0
    new-instance v4, Ljavafx/geometry/Point2D;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    invoke-direct {v5, v6, v7, v8, v9}, Ljavafx/geometry/Point2D;-><init>(DD)V

    move-object v1, v4

    goto :goto_0
.end method

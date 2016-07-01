.class Lcom/sun/javafx/scene/control/skin/InputFieldSkin$1;
.super Lcom/sun/javafx/scene/control/skin/InputFieldSkin$InnerTextField;
.source "InputFieldSkin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/javafx/scene/control/skin/InputFieldSkin;-><init>(Lcom/sun/javafx/scene/control/skin/InputField;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/javafx/scene/control/skin/InputFieldSkin;


# direct methods
.method constructor <init>(Lcom/sun/javafx/scene/control/skin/InputFieldSkin;)V
    .locals 5

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/InputFieldSkin$1;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/javafx/scene/control/skin/InputFieldSkin;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/InputFieldSkin$1;->this$0:Lcom/sun/javafx/scene/control/skin/InputFieldSkin;

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/skin/InputFieldSkin$InnerTextField;-><init>(Lcom/sun/javafx/scene/control/skin/InputFieldSkin;Lcom/sun/javafx/scene/control/skin/InputFieldSkin$1;)V

    return-void
.end method


# virtual methods
.method public replaceSelection(Ljava/lang/String;)V
    .locals 10

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/InputFieldSkin$1;
    move-object v1, p1

    .local v1, "text":Ljava/lang/String;
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/InputFieldSkin$1;->this$0:Lcom/sun/javafx/scene/control/skin/InputFieldSkin;

    invoke-static {v5}, Lcom/sun/javafx/scene/control/skin/InputFieldSkin;->access$100(Lcom/sun/javafx/scene/control/skin/InputFieldSkin;)Lcom/sun/javafx/scene/control/skin/InputFieldSkin$InnerTextField;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/InputFieldSkin$InnerTextField;->getText()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    const-string v5, ""

    :goto_0
    move-object v2, v5

    .line 78
    .local v2, "t":Ljava/lang/String;
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/InputFieldSkin$1;->this$0:Lcom/sun/javafx/scene/control/skin/InputFieldSkin;

    invoke-static {v5}, Lcom/sun/javafx/scene/control/skin/InputFieldSkin;->access$100(Lcom/sun/javafx/scene/control/skin/InputFieldSkin;)Lcom/sun/javafx/scene/control/skin/InputFieldSkin$InnerTextField;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/InputFieldSkin$InnerTextField;->getAnchor()I

    move-result v5

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/InputFieldSkin$1;->this$0:Lcom/sun/javafx/scene/control/skin/InputFieldSkin;

    invoke-static {v6}, Lcom/sun/javafx/scene/control/skin/InputFieldSkin;->access$100(Lcom/sun/javafx/scene/control/skin/InputFieldSkin;)Lcom/sun/javafx/scene/control/skin/InputFieldSkin$InnerTextField;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/InputFieldSkin$InnerTextField;->getCaretPosition()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    move v3, v5

    .line 79
    .local v3, "start":I
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/InputFieldSkin$1;->this$0:Lcom/sun/javafx/scene/control/skin/InputFieldSkin;

    invoke-static {v5}, Lcom/sun/javafx/scene/control/skin/InputFieldSkin;->access$100(Lcom/sun/javafx/scene/control/skin/InputFieldSkin;)Lcom/sun/javafx/scene/control/skin/InputFieldSkin$InnerTextField;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/InputFieldSkin$InnerTextField;->getAnchor()I

    move-result v5

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/InputFieldSkin$1;->this$0:Lcom/sun/javafx/scene/control/skin/InputFieldSkin;

    invoke-static {v6}, Lcom/sun/javafx/scene/control/skin/InputFieldSkin;->access$100(Lcom/sun/javafx/scene/control/skin/InputFieldSkin;)Lcom/sun/javafx/scene/control/skin/InputFieldSkin$InnerTextField;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/InputFieldSkin$InnerTextField;->getCaretPosition()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v4, v5

    .line 80
    .local v4, "end":I
    new-instance v5, Ljava/lang/StringBuilder;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v2

    const/4 v7, 0x0

    move v8, v3

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v2

    move v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    .line 81
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/InputFieldSkin$1;->this$0:Lcom/sun/javafx/scene/control/skin/InputFieldSkin;

    move-object v6, v2

    invoke-virtual {v5, v6}, Lcom/sun/javafx/scene/control/skin/InputFieldSkin;->accept(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 82
    move-object v5, v0

    move-object v6, v1

    invoke-super {v5, v6}, Lcom/sun/javafx/scene/control/skin/InputFieldSkin$InnerTextField;->replaceSelection(Ljava/lang/String;)V

    .line 88
    :cond_0
    return-void

    .line 77
    .end local v2    # "t":Ljava/lang/String;
    .end local v3    # "start":I
    .end local v4    # "end":I
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/InputFieldSkin$1;->this$0:Lcom/sun/javafx/scene/control/skin/InputFieldSkin;

    invoke-static {v5}, Lcom/sun/javafx/scene/control/skin/InputFieldSkin;->access$100(Lcom/sun/javafx/scene/control/skin/InputFieldSkin;)Lcom/sun/javafx/scene/control/skin/InputFieldSkin$InnerTextField;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/InputFieldSkin$InnerTextField;->getText()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public replaceText(IILjava/lang/String;)V
    .locals 10

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/InputFieldSkin$1;
    move v1, p1

    .local v1, "start":I
    move v2, p2

    .local v2, "end":I
    move-object v3, p3

    .local v3, "text":Ljava/lang/String;
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/InputFieldSkin$1;->this$0:Lcom/sun/javafx/scene/control/skin/InputFieldSkin;

    invoke-static {v5}, Lcom/sun/javafx/scene/control/skin/InputFieldSkin;->access$100(Lcom/sun/javafx/scene/control/skin/InputFieldSkin;)Lcom/sun/javafx/scene/control/skin/InputFieldSkin$InnerTextField;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/InputFieldSkin$InnerTextField;->getText()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    const-string v5, ""

    :goto_0
    move-object v4, v5

    .line 67
    .local v4, "t":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v4

    const/4 v7, 0x0

    move v8, v1

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v4

    move v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 68
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/InputFieldSkin$1;->this$0:Lcom/sun/javafx/scene/control/skin/InputFieldSkin;

    move-object v6, v4

    invoke-virtual {v5, v6}, Lcom/sun/javafx/scene/control/skin/InputFieldSkin;->accept(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 69
    move-object v5, v0

    move v6, v1

    move v7, v2

    move-object v8, v3

    invoke-super {v5, v6, v7, v8}, Lcom/sun/javafx/scene/control/skin/InputFieldSkin$InnerTextField;->replaceText(IILjava/lang/String;)V

    .line 74
    :cond_0
    return-void

    .line 66
    .end local v4    # "t":Ljava/lang/String;
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/InputFieldSkin$1;->this$0:Lcom/sun/javafx/scene/control/skin/InputFieldSkin;

    invoke-static {v5}, Lcom/sun/javafx/scene/control/skin/InputFieldSkin;->access$100(Lcom/sun/javafx/scene/control/skin/InputFieldSkin;)Lcom/sun/javafx/scene/control/skin/InputFieldSkin$InnerTextField;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/InputFieldSkin$InnerTextField;->getText()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

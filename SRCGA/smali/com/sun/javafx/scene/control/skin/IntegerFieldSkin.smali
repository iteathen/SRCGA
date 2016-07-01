.class public Lcom/sun/javafx/scene/control/skin/IntegerFieldSkin;
.super Lcom/sun/javafx/scene/control/skin/InputFieldSkin;
.source "IntegerFieldSkin.java"


# instance fields
.field private integerFieldValueListener:Ljavafx/beans/InvalidationListener;


# direct methods
.method public constructor <init>(Lcom/sun/javafx/scene/control/skin/IntegerField;)V
    .locals 8

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/IntegerFieldSkin;
    move-object v1, p1

    .local v1, "control":Lcom/sun/javafx/scene/control/skin/IntegerField;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/InputFieldSkin;-><init>(Lcom/sun/javafx/scene/control/skin/InputField;)V

    .line 47
    move-object v2, v1

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/IntegerField;->valueProperty()Ljavafx/beans/property/IntegerProperty;

    move-result-object v2

    move-object v3, v0

    move-object v4, v0

    invoke-static {v4}, Lcom/sun/javafx/scene/control/skin/IntegerFieldSkin$$Lambda$1;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/IntegerFieldSkin;)Ljavafx/beans/InvalidationListener;

    move-result-object v4

    move-object v6, v3

    move-object v7, v4

    move-object v3, v7

    move-object v4, v6

    move-object v5, v7

    iput-object v5, v4, Lcom/sun/javafx/scene/control/skin/IntegerFieldSkin;->integerFieldValueListener:Ljavafx/beans/InvalidationListener;

    invoke-virtual {v2, v3}, Ljavafx/beans/property/IntegerProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 50
    return-void
.end method

.method static synthetic access$lambda$0(Lcom/sun/javafx/scene/control/skin/IntegerFieldSkin;Ljavafx/beans/Observable;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/IntegerFieldSkin;->lambda$new$362(Ljavafx/beans/Observable;)V

    return-void
.end method

.method static synthetic access$lambda$1(Lcom/sun/javafx/scene/control/skin/IntegerFieldSkin;)V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/IntegerFieldSkin;->lambda$updateValue$363()V

    return-void
.end method

.method private synthetic lambda$new$362(Ljavafx/beans/Observable;)V
    .locals 3

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/IntegerFieldSkin;
    move-object v1, p1

    .local v1, "observable":Ljavafx/beans/Observable;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/IntegerFieldSkin;->updateText()V

    .line 49
    return-void
.end method

.method private synthetic lambda$updateValue$363()V
    .locals 3

    .prologue
    .line 104
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/IntegerFieldSkin;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/IntegerFieldSkin;->getTextField()Ljavafx/scene/control/TextField;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljavafx/scene/control/TextField;->positionCaret(I)V

    .line 105
    return-void
.end method


# virtual methods
.method protected accept(Ljava/lang/String;)Z
    .locals 6

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/IntegerFieldSkin;
    move-object v1, p1

    .local v1, "text":Ljava/lang/String;
    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x1

    move v0, v4

    .line 84
    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/IntegerFieldSkin;
    :goto_0
    return v0

    .line 76
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/IntegerFieldSkin;
    :cond_0
    move-object v4, v1

    const-string v5, "[0-9]*"

    invoke-virtual {v4, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 78
    move-object v4, v1

    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 79
    move-object v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    move v2, v4

    .line 80
    .local v2, "value":I
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/IntegerFieldSkin;->control:Lcom/sun/javafx/scene/control/skin/InputField;

    check-cast v4, Lcom/sun/javafx/scene/control/skin/IntegerField;

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/IntegerField;->getMaxValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    move v3, v4

    .line 81
    .local v3, "maxValue":I
    move v4, v3

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    move v4, v2

    move v5, v3

    if-gt v4, v5, :cond_1

    const/4 v4, 0x1

    :goto_1
    move v0, v4

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    const/4 v4, 0x1

    goto :goto_1

    .line 82
    .end local v2    # "value":I
    .end local v3    # "maxValue":I
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 84
    :cond_3
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0
.end method

.method public dispose()V
    .locals 3

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/IntegerFieldSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/IntegerFieldSkin;->control:Lcom/sun/javafx/scene/control/skin/InputField;

    check-cast v1, Lcom/sun/javafx/scene/control/skin/IntegerField;

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/IntegerField;->valueProperty()Ljavafx/beans/property/IntegerProperty;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/IntegerFieldSkin;->integerFieldValueListener:Ljavafx/beans/InvalidationListener;

    invoke-virtual {v1, v2}, Ljavafx/beans/property/IntegerProperty;->removeListener(Ljavafx/beans/InvalidationListener;)V

    .line 71
    move-object v1, v0

    invoke-super {v1}, Lcom/sun/javafx/scene/control/skin/InputFieldSkin;->dispose()V

    .line 72
    return-void
.end method

.method public getNode()Ljavafx/scene/Node;
    .locals 2

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/IntegerFieldSkin;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/IntegerFieldSkin;->getTextField()Ljavafx/scene/control/TextField;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/IntegerFieldSkin;
    return-object v0
.end method

.method public bridge synthetic getSkinnable()Lcom/sun/javafx/scene/control/skin/InputField;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/IntegerFieldSkin;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/IntegerFieldSkin;->getSkinnable()Lcom/sun/javafx/scene/control/skin/IntegerField;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/IntegerFieldSkin;
    return-object v0
.end method

.method public getSkinnable()Lcom/sun/javafx/scene/control/skin/IntegerField;
    .locals 2

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/IntegerFieldSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/IntegerFieldSkin;->control:Lcom/sun/javafx/scene/control/skin/InputField;

    check-cast v1, Lcom/sun/javafx/scene/control/skin/IntegerField;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/IntegerFieldSkin;
    return-object v0
.end method

.method public bridge synthetic getSkinnable()Ljavafx/scene/control/Skinnable;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/IntegerFieldSkin;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/IntegerFieldSkin;->getSkinnable()Lcom/sun/javafx/scene/control/skin/IntegerField;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/IntegerFieldSkin;
    return-object v0
.end method

.method protected updateText()V
    .locals 5

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/IntegerFieldSkin;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/IntegerFieldSkin;->getTextField()Ljavafx/scene/control/TextField;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/IntegerFieldSkin;->control:Lcom/sun/javafx/scene/control/skin/InputField;

    check-cast v3, Lcom/sun/javafx/scene/control/skin/IntegerField;

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/IntegerField;->getValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavafx/scene/control/TextField;->setText(Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method protected updateValue()V
    .locals 7

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/IntegerFieldSkin;
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/IntegerFieldSkin;->control:Lcom/sun/javafx/scene/control/skin/InputField;

    check-cast v5, Lcom/sun/javafx/scene/control/skin/IntegerField;

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/IntegerField;->getValue()I

    move-result v5

    move v1, v5

    .line 94
    .local v1, "value":I
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/IntegerFieldSkin;->getTextField()Ljavafx/scene/control/TextField;

    move-result-object v5

    invoke-virtual {v5}, Ljavafx/scene/control/TextField;->getText()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    const-string v5, ""

    :goto_0
    move-object v3, v5

    .line 96
    .local v3, "text":Ljava/lang/String;
    move-object v5, v3

    :try_start_0
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move v2, v5

    .line 97
    .local v2, "newValue":I
    move v5, v2

    move v6, v1

    if-eq v5, v6, :cond_0

    .line 98
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/IntegerFieldSkin;->control:Lcom/sun/javafx/scene/control/skin/InputField;

    check-cast v5, Lcom/sun/javafx/scene/control/skin/IntegerField;

    move v6, v2

    invoke-virtual {v5, v6}, Lcom/sun/javafx/scene/control/skin/IntegerField;->setValue(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    .line 107
    .end local v2    # "newValue":I
    :cond_0
    :goto_1
    return-void

    .line 94
    .end local v3    # "text":Ljava/lang/String;
    :cond_1
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/IntegerFieldSkin;->getTextField()Ljavafx/scene/control/TextField;

    move-result-object v5

    invoke-virtual {v5}, Ljavafx/scene/control/TextField;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 100
    .restart local v3    # "text":Ljava/lang/String;
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 102
    .local v4, "ex":Ljava/lang/NumberFormatException;
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/IntegerFieldSkin;->control:Lcom/sun/javafx/scene/control/skin/InputField;

    check-cast v5, Lcom/sun/javafx/scene/control/skin/IntegerField;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/sun/javafx/scene/control/skin/IntegerField;->setValue(I)V

    .line 103
    move-object v5, v0

    invoke-static {v5}, Lcom/sun/javafx/scene/control/skin/IntegerFieldSkin$$Lambda$2;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/IntegerFieldSkin;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-static {v5}, Ljavafx/application/Platform;->runLater(Ljava/lang/Runnable;)V

    goto :goto_1
.end method

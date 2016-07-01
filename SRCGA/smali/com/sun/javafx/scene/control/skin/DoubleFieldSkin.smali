.class public Lcom/sun/javafx/scene/control/skin/DoubleFieldSkin;
.super Lcom/sun/javafx/scene/control/skin/InputFieldSkin;
.source "DoubleFieldSkin.java"


# instance fields
.field private doubleFieldValueListener:Ljavafx/beans/InvalidationListener;


# direct methods
.method public constructor <init>(Lcom/sun/javafx/scene/control/skin/DoubleField;)V
    .locals 8

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/DoubleFieldSkin;
    move-object v1, p1

    .local v1, "control":Lcom/sun/javafx/scene/control/skin/DoubleField;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/InputFieldSkin;-><init>(Lcom/sun/javafx/scene/control/skin/InputField;)V

    .line 47
    move-object v2, v1

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/DoubleField;->valueProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v2

    move-object v3, v0

    move-object v4, v0

    invoke-static {v4}, Lcom/sun/javafx/scene/control/skin/DoubleFieldSkin$$Lambda$1;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/DoubleFieldSkin;)Ljavafx/beans/InvalidationListener;

    move-result-object v4

    move-object v6, v3

    move-object v7, v4

    move-object v3, v7

    move-object v4, v6

    move-object v5, v7

    iput-object v5, v4, Lcom/sun/javafx/scene/control/skin/DoubleFieldSkin;->doubleFieldValueListener:Ljavafx/beans/InvalidationListener;

    invoke-virtual {v2, v3}, Ljavafx/beans/property/DoubleProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 50
    return-void
.end method

.method static synthetic access$lambda$0(Lcom/sun/javafx/scene/control/skin/DoubleFieldSkin;Ljavafx/beans/Observable;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/DoubleFieldSkin;->lambda$new$348(Ljavafx/beans/Observable;)V

    return-void
.end method

.method static synthetic access$lambda$1(Lcom/sun/javafx/scene/control/skin/DoubleFieldSkin;)V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/DoubleFieldSkin;->lambda$updateValue$349()V

    return-void
.end method

.method private synthetic lambda$new$348(Ljavafx/beans/Observable;)V
    .locals 3

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/DoubleFieldSkin;
    move-object v1, p1

    .local v1, "observable":Ljavafx/beans/Observable;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/DoubleFieldSkin;->updateText()V

    .line 49
    return-void
.end method

.method private synthetic lambda$updateValue$349()V
    .locals 3

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/DoubleFieldSkin;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/DoubleFieldSkin;->getTextField()Ljavafx/scene/control/TextField;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljavafx/scene/control/TextField;->positionCaret(I)V

    .line 103
    return-void
.end method


# virtual methods
.method protected accept(Ljava/lang/String;)Z
    .locals 6

    .prologue
    .line 75
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/DoubleFieldSkin;
    move-object v2, p1

    .local v2, "text":Ljava/lang/String;
    move-object v4, v2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x1

    move v1, v4

    .line 82
    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/DoubleFieldSkin;
    :goto_0
    return v1

    .line 76
    .restart local v1    # "this":Lcom/sun/javafx/scene/control/skin/DoubleFieldSkin;
    :cond_0
    move-object v4, v2

    const-string v5, "[0-9\\.]*"

    invoke-virtual {v4, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 78
    move-object v4, v2

    :try_start_0
    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 79
    const/4 v4, 0x1

    move v1, v4

    goto :goto_0

    .line 80
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 82
    :cond_1
    const/4 v4, 0x0

    move v1, v4

    goto :goto_0
.end method

.method public dispose()V
    .locals 3

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/DoubleFieldSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/DoubleFieldSkin;->control:Lcom/sun/javafx/scene/control/skin/InputField;

    check-cast v1, Lcom/sun/javafx/scene/control/skin/DoubleField;

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/DoubleField;->valueProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/DoubleFieldSkin;->doubleFieldValueListener:Ljavafx/beans/InvalidationListener;

    invoke-virtual {v1, v2}, Ljavafx/beans/property/DoubleProperty;->removeListener(Ljavafx/beans/InvalidationListener;)V

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

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/DoubleFieldSkin;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/DoubleFieldSkin;->getTextField()Ljavafx/scene/control/TextField;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/DoubleFieldSkin;
    return-object v0
.end method

.method public getSkinnable()Lcom/sun/javafx/scene/control/skin/DoubleField;
    .locals 2

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/DoubleFieldSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/DoubleFieldSkin;->control:Lcom/sun/javafx/scene/control/skin/InputField;

    check-cast v1, Lcom/sun/javafx/scene/control/skin/DoubleField;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/DoubleFieldSkin;
    return-object v0
.end method

.method public bridge synthetic getSkinnable()Lcom/sun/javafx/scene/control/skin/InputField;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/DoubleFieldSkin;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/DoubleFieldSkin;->getSkinnable()Lcom/sun/javafx/scene/control/skin/DoubleField;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/DoubleFieldSkin;
    return-object v0
.end method

.method public bridge synthetic getSkinnable()Ljavafx/scene/control/Skinnable;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/DoubleFieldSkin;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/DoubleFieldSkin;->getSkinnable()Lcom/sun/javafx/scene/control/skin/DoubleField;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/DoubleFieldSkin;
    return-object v0
.end method

.method protected updateText()V
    .locals 7

    .prologue
    .line 86
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/DoubleFieldSkin;
    move-object v2, v1

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/DoubleFieldSkin;->getTextField()Ljavafx/scene/control/TextField;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/DoubleFieldSkin;->control:Lcom/sun/javafx/scene/control/skin/InputField;

    check-cast v4, Lcom/sun/javafx/scene/control/skin/DoubleField;

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/DoubleField;->getValue()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TextField;->setText(Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method protected updateValue()V
    .locals 12

    .prologue
    .line 90
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/DoubleFieldSkin;
    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/DoubleFieldSkin;->control:Lcom/sun/javafx/scene/control/skin/InputField;

    check-cast v8, Lcom/sun/javafx/scene/control/skin/DoubleField;

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/skin/DoubleField;->getValue()D

    move-result-wide v8

    move-wide v2, v8

    .line 92
    .local v2, "value":D
    move-object v8, v1

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/skin/DoubleFieldSkin;->getTextField()Ljavafx/scene/control/TextField;

    move-result-object v8

    invoke-virtual {v8}, Ljavafx/scene/control/TextField;->getText()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_1

    const-string v8, ""

    :goto_0
    move-object v6, v8

    .line 94
    .local v6, "text":Ljava/lang/String;
    move-object v8, v6

    :try_start_0
    invoke-static {v8}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    move-wide v4, v8

    .line 95
    .local v4, "newValue":D
    move-wide v8, v4

    move-wide v10, v2

    cmpl-double v8, v8, v10

    if-eqz v8, :cond_0

    .line 96
    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/DoubleFieldSkin;->control:Lcom/sun/javafx/scene/control/skin/InputField;

    check-cast v8, Lcom/sun/javafx/scene/control/skin/DoubleField;

    move-wide v9, v4

    invoke-virtual {v8, v9, v10}, Lcom/sun/javafx/scene/control/skin/DoubleField;->setValue(D)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    .line 105
    .end local v4    # "newValue":D
    :cond_0
    :goto_1
    return-void

    .line 92
    .end local v6    # "text":Ljava/lang/String;
    :cond_1
    move-object v8, v1

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/skin/DoubleFieldSkin;->getTextField()Ljavafx/scene/control/TextField;

    move-result-object v8

    invoke-virtual {v8}, Ljavafx/scene/control/TextField;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 98
    .restart local v6    # "text":Ljava/lang/String;
    :catch_0
    move-exception v8

    move-object v7, v8

    .line 100
    .local v7, "ex":Ljava/lang/NumberFormatException;
    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/DoubleFieldSkin;->control:Lcom/sun/javafx/scene/control/skin/InputField;

    check-cast v8, Lcom/sun/javafx/scene/control/skin/DoubleField;

    const-wide/16 v9, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/sun/javafx/scene/control/skin/DoubleField;->setValue(D)V

    .line 101
    move-object v8, v1

    invoke-static {v8}, Lcom/sun/javafx/scene/control/skin/DoubleFieldSkin$$Lambda$2;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/DoubleFieldSkin;)Ljava/lang/Runnable;

    move-result-object v8

    invoke-static {v8}, Ljavafx/application/Platform;->runLater(Ljava/lang/Runnable;)V

    goto :goto_1
.end method

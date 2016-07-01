.class Lcom/sun/javafx/scene/control/skin/WebColorFieldSkin;
.super Lcom/sun/javafx/scene/control/skin/InputFieldSkin;
.source "WebColorFieldSkin.java"


# instance fields
.field private integerFieldValueListener:Ljavafx/beans/InvalidationListener;

.field private noChangeInValue:Z


# direct methods
.method public constructor <init>(Lcom/sun/javafx/scene/control/skin/WebColorField;)V
    .locals 8

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/WebColorFieldSkin;
    move-object v1, p1

    .local v1, "control":Lcom/sun/javafx/scene/control/skin/WebColorField;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/InputFieldSkin;-><init>(Lcom/sun/javafx/scene/control/skin/InputField;)V

    .line 39
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/sun/javafx/scene/control/skin/WebColorFieldSkin;->noChangeInValue:Z

    .line 51
    move-object v2, v1

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/WebColorField;->valueProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v0

    move-object v4, v0

    invoke-static {v4}, Lcom/sun/javafx/scene/control/skin/WebColorFieldSkin$$Lambda$1;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/WebColorFieldSkin;)Ljavafx/beans/InvalidationListener;

    move-result-object v4

    move-object v6, v3

    move-object v7, v4

    move-object v3, v7

    move-object v4, v6

    move-object v5, v7

    iput-object v5, v4, Lcom/sun/javafx/scene/control/skin/WebColorFieldSkin;->integerFieldValueListener:Ljavafx/beans/InvalidationListener;

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 58
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/WebColorFieldSkin;->getTextField()Ljavafx/scene/control/TextField;

    move-result-object v2

    sget-object v3, Ljavafx/geometry/NodeOrientation;->LEFT_TO_RIGHT:Ljavafx/geometry/NodeOrientation;

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TextField;->setNodeOrientation(Ljavafx/geometry/NodeOrientation;)V

    .line 59
    return-void
.end method

.method static synthetic access$lambda$0(Lcom/sun/javafx/scene/control/skin/WebColorFieldSkin;Ljavafx/beans/Observable;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/WebColorFieldSkin;->lambda$new$548(Ljavafx/beans/Observable;)V

    return-void
.end method

.method private synthetic lambda$new$548(Ljavafx/beans/Observable;)V
    .locals 3

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/WebColorFieldSkin;
    move-object v1, p1

    .local v1, "observable":Ljavafx/beans/Observable;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/WebColorFieldSkin;->updateText()V

    .line 53
    return-void
.end method


# virtual methods
.method protected accept(Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/WebColorFieldSkin;
    move-object v1, p1

    .local v1, "text":Ljava/lang/String;
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    move v0, v2

    .line 88
    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/WebColorFieldSkin;
    :goto_0
    return v0

    .line 85
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/WebColorFieldSkin;
    :cond_0
    move-object v2, v1

    const-string v3, "#[a-fA-F0-9]{0,6}"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object v2, v1

    const-string v3, "[a-fA-F0-9]{0,6}"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 86
    :cond_1
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    .line 88
    :cond_2
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public dispose()V
    .locals 3

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/WebColorFieldSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/WebColorFieldSkin;->control:Lcom/sun/javafx/scene/control/skin/InputField;

    check-cast v1, Lcom/sun/javafx/scene/control/skin/WebColorField;

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/WebColorField;->valueProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/WebColorFieldSkin;->integerFieldValueListener:Ljavafx/beans/InvalidationListener;

    invoke-virtual {v1, v2}, Ljavafx/beans/property/ObjectProperty;->removeListener(Ljavafx/beans/InvalidationListener;)V

    .line 79
    move-object v1, v0

    invoke-super {v1}, Lcom/sun/javafx/scene/control/skin/InputFieldSkin;->dispose()V

    .line 80
    return-void
.end method

.method public getNode()Ljavafx/scene/Node;
    .locals 2

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/WebColorFieldSkin;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/WebColorFieldSkin;->getTextField()Ljavafx/scene/control/TextField;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/WebColorFieldSkin;
    return-object v0
.end method

.method public bridge synthetic getSkinnable()Lcom/sun/javafx/scene/control/skin/InputField;
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/WebColorFieldSkin;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/WebColorFieldSkin;->getSkinnable()Lcom/sun/javafx/scene/control/skin/WebColorField;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/WebColorFieldSkin;
    return-object v0
.end method

.method public getSkinnable()Lcom/sun/javafx/scene/control/skin/WebColorField;
    .locals 2

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/WebColorFieldSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/WebColorFieldSkin;->control:Lcom/sun/javafx/scene/control/skin/InputField;

    check-cast v1, Lcom/sun/javafx/scene/control/skin/WebColorField;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/WebColorFieldSkin;
    return-object v0
.end method

.method public bridge synthetic getSkinnable()Ljavafx/scene/control/Skinnable;
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/WebColorFieldSkin;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/WebColorFieldSkin;->getSkinnable()Lcom/sun/javafx/scene/control/skin/WebColorField;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/WebColorFieldSkin;
    return-object v0
.end method

.method protected updateText()V
    .locals 4

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/WebColorFieldSkin;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/WebColorFieldSkin;->control:Lcom/sun/javafx/scene/control/skin/InputField;

    check-cast v2, Lcom/sun/javafx/scene/control/skin/WebColorField;

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/WebColorField;->getValue()Ljavafx/scene/paint/Color;

    move-result-object v2

    move-object v1, v2

    .line 93
    .local v1, "color":Ljavafx/scene/paint/Color;
    move-object v2, v1

    if-nez v2, :cond_0

    sget-object v2, Ljavafx/scene/paint/Color;->BLACK:Ljavafx/scene/paint/Color;

    move-object v1, v2

    .line 94
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/WebColorFieldSkin;->getTextField()Ljavafx/scene/control/TextField;

    move-result-object v2

    move-object v3, v1

    invoke-static {v3}, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->formatHexString(Ljavafx/scene/paint/Color;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TextField;->setText(Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method protected updateValue()V
    .locals 8

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/WebColorFieldSkin;
    move-object v4, v0

    iget-boolean v4, v4, Lcom/sun/javafx/scene/control/skin/WebColorFieldSkin;->noChangeInValue:Z

    if-eqz v4, :cond_0

    .line 117
    :goto_0
    return-void

    .line 99
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/WebColorFieldSkin;->control:Lcom/sun/javafx/scene/control/skin/InputField;

    check-cast v4, Lcom/sun/javafx/scene/control/skin/WebColorField;

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/WebColorField;->getValue()Ljavafx/scene/paint/Color;

    move-result-object v4

    move-object v1, v4

    .line 100
    .local v1, "value":Ljavafx/scene/paint/Color;
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/WebColorFieldSkin;->getTextField()Ljavafx/scene/control/TextField;

    move-result-object v4

    invoke-virtual {v4}, Ljavafx/scene/control/TextField;->getText()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    const-string v4, ""

    :goto_1
    move-object v2, v4

    .line 101
    .local v2, "text":Ljava/lang/String;
    move-object v4, v2

    const-string v5, "#[A-F0-9]{6}"

    invoke-virtual {v4, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    move-object v4, v2

    const-string v5, "[A-F0-9]{6}"

    invoke-virtual {v4, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 103
    :cond_1
    move-object v4, v2

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x23

    if-ne v4, v5, :cond_4

    move-object v4, v2

    invoke-static {v4}, Ljavafx/scene/paint/Color;->web(Ljava/lang/String;)Ljavafx/scene/paint/Color;

    move-result-object v4

    :goto_2
    move-object v3, v4

    .line 104
    .local v3, "newValue":Ljavafx/scene/paint/Color;
    move-object v4, v3

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljavafx/scene/paint/Color;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 105
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/WebColorFieldSkin;->control:Lcom/sun/javafx/scene/control/skin/InputField;

    check-cast v4, Lcom/sun/javafx/scene/control/skin/WebColorField;

    move-object v5, v3

    invoke-virtual {v4, v5}, Lcom/sun/javafx/scene/control/skin/WebColorField;->setValue(Ljavafx/scene/paint/Color;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    .line 117
    .end local v3    # "newValue":Ljavafx/scene/paint/Color;
    :cond_2
    :goto_3
    goto :goto_0

    .line 100
    .end local v2    # "text":Ljava/lang/String;
    :cond_3
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/WebColorFieldSkin;->getTextField()Ljavafx/scene/control/TextField;

    move-result-object v4

    invoke-virtual {v4}, Ljavafx/scene/control/TextField;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 103
    .restart local v2    # "text":Ljava/lang/String;
    :cond_4
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljavafx/scene/paint/Color;->web(Ljava/lang/String;)Ljavafx/scene/paint/Color;

    move-result-object v4

    goto :goto_2

    .line 109
    .restart local v3    # "newValue":Ljavafx/scene/paint/Color;
    :cond_5
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/sun/javafx/scene/control/skin/WebColorFieldSkin;->noChangeInValue:Z

    .line 110
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/WebColorFieldSkin;->getTextField()Ljavafx/scene/control/TextField;

    move-result-object v4

    move-object v5, v3

    invoke-static {v5}, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->formatHexString(Ljavafx/scene/paint/Color;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavafx/scene/control/TextField;->setText(Ljava/lang/String;)V

    .line 111
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/sun/javafx/scene/control/skin/WebColorFieldSkin;->noChangeInValue:Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 113
    .end local v3    # "newValue":Ljavafx/scene/paint/Color;
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 114
    .local v3, "ex":Ljava/lang/IllegalArgumentException;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to parse ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_3
.end method

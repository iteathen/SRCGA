.class public abstract Lcom/sun/javafx/scene/control/behavior/OrientedKeyBinding;
.super Lcom/sun/javafx/scene/control/behavior/KeyBinding;
.source "OrientedKeyBinding.java"


# instance fields
.field private vertical:Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;


# direct methods
.method public constructor <init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/OrientedKeyBinding;
    move-object v1, p1

    .local v1, "code":Ljavafx/scene/input/KeyCode;
    move-object v2, p2

    .local v2, "action":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    .line 41
    move-object v3, v0

    sget-object v4, Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;->FALSE:Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;

    iput-object v4, v3, Lcom/sun/javafx/scene/control/behavior/OrientedKeyBinding;->vertical:Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;

    .line 45
    return-void
.end method

.method public constructor <init>(Ljavafx/scene/input/KeyCode;Ljavafx/event/EventType;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/input/KeyCode;",
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/input/KeyEvent;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/OrientedKeyBinding;
    move-object v1, p1

    .local v1, "code":Ljavafx/scene/input/KeyCode;
    move-object v2, p2

    .local v2, "type":Ljavafx/event/EventType;, "Ljavafx/event/EventType<Ljavafx/scene/input/KeyEvent;>;"
    move-object v3, p3

    .local v3, "action":Ljava/lang/String;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljavafx/event/EventType;Ljava/lang/String;)V

    .line 41
    move-object v4, v0

    sget-object v5, Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;->FALSE:Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;

    iput-object v5, v4, Lcom/sun/javafx/scene/control/behavior/OrientedKeyBinding;->vertical:Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;

    .line 49
    return-void
.end method


# virtual methods
.method public getSpecificity(Ljavafx/scene/control/Control;Ljavafx/scene/input/KeyEvent;)I
    .locals 8

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/OrientedKeyBinding;
    move-object v1, p1

    .local v1, "control":Ljavafx/scene/control/Control;
    move-object v2, p2

    .local v2, "event":Ljavafx/scene/input/KeyEvent;
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v5, v6}, Lcom/sun/javafx/scene/control/behavior/OrientedKeyBinding;->getVertical(Ljavafx/scene/control/Control;)Z

    move-result v5

    move v3, v5

    .line 62
    .local v3, "verticalControl":Z
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/behavior/OrientedKeyBinding;->vertical:Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;

    move v6, v3

    invoke-virtual {v5, v6}, Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;->equals(Z)Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v5, 0x0

    move v0, v5

    .line 69
    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/OrientedKeyBinding;
    :goto_0
    return v0

    .line 64
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/behavior/OrientedKeyBinding;
    :cond_0
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-super {v5, v6, v7}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->getSpecificity(Ljavafx/scene/control/Control;Ljavafx/scene/input/KeyEvent;)I

    move-result v5

    move v4, v5

    .line 67
    .local v4, "s":I
    move v5, v4

    if-nez v5, :cond_1

    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    .line 69
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/behavior/OrientedKeyBinding;->vertical:Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;

    sget-object v6, Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;->ANY:Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;

    if-eq v5, v6, :cond_2

    move v5, v4

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    :goto_1
    move v0, v5

    goto :goto_0

    :cond_2
    move v5, v4

    goto :goto_1
.end method

.method protected abstract getVertical(Ljavafx/scene/control/Control;)Z
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/OrientedKeyBinding;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OrientedKeyBinding [code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/behavior/OrientedKeyBinding;->getCode()Ljavafx/scene/input/KeyCode;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", shift="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/behavior/OrientedKeyBinding;->getShift()Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ctrl="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    .line 74
    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/behavior/OrientedKeyBinding;->getCtrl()Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", alt="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/behavior/OrientedKeyBinding;->getAlt()Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", meta="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/behavior/OrientedKeyBinding;->getMeta()Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    .line 75
    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/behavior/OrientedKeyBinding;->getType()Ljavafx/event/EventType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", vertical="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/behavior/OrientedKeyBinding;->vertical:Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    .line 76
    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/behavior/OrientedKeyBinding;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/OrientedKeyBinding;
    return-object v0
.end method

.method public vertical()Lcom/sun/javafx/scene/control/behavior/OrientedKeyBinding;
    .locals 3

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/OrientedKeyBinding;
    move-object v1, v0

    sget-object v2, Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;->TRUE:Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;

    iput-object v2, v1, Lcom/sun/javafx/scene/control/behavior/OrientedKeyBinding;->vertical:Lcom/sun/javafx/scene/control/behavior/OptionalBoolean;

    .line 53
    move-object v1, v0

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/OrientedKeyBinding;
    return-object v0
.end method

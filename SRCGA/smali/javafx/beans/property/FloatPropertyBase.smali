.class public abstract Ljavafx/beans/property/FloatPropertyBase;
.super Ljavafx/beans/property/FloatProperty;
.source "FloatPropertyBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavafx/beans/property/FloatPropertyBase$Listener;
    }
.end annotation


# instance fields
.field private helper:Lcom/sun/javafx/binding/ExpressionHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/javafx/binding/ExpressionHelper",
            "<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation
.end field

.field private listener:Ljavafx/beans/InvalidationListener;

.field private observable:Ljavafx/beans/value/ObservableFloatValue;

.field private valid:Z

.field private value:F


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/FloatPropertyBase;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/beans/property/FloatProperty;-><init>()V

    .line 55
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Ljavafx/beans/property/FloatPropertyBase;->observable:Ljavafx/beans/value/ObservableFloatValue;

    .line 56
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Ljavafx/beans/property/FloatPropertyBase;->listener:Ljavafx/beans/InvalidationListener;

    .line 57
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Ljavafx/beans/property/FloatPropertyBase;->valid:Z

    .line 58
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Ljavafx/beans/property/FloatPropertyBase;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    .line 64
    return-void
.end method

.method public constructor <init>(F)V
    .locals 4

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/FloatPropertyBase;
    move v1, p1

    .local v1, "initialValue":F
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/FloatProperty;-><init>()V

    .line 55
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Ljavafx/beans/property/FloatPropertyBase;->observable:Ljavafx/beans/value/ObservableFloatValue;

    .line 56
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Ljavafx/beans/property/FloatPropertyBase;->listener:Ljavafx/beans/InvalidationListener;

    .line 57
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Ljavafx/beans/property/FloatPropertyBase;->valid:Z

    .line 58
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Ljavafx/beans/property/FloatPropertyBase;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    .line 73
    move-object v2, v0

    move v3, v1

    iput v3, v2, Ljavafx/beans/property/FloatPropertyBase;->value:F

    .line 74
    return-void
.end method

.method static synthetic access$000(Ljavafx/beans/property/FloatPropertyBase;)V
    .locals 2

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "x0":Ljavafx/beans/property/FloatPropertyBase;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/beans/property/FloatPropertyBase;->markInvalid()V

    return-void
.end method

.method private markInvalid()V
    .locals 3

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/FloatPropertyBase;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/beans/property/FloatPropertyBase;->valid:Z

    if-eqz v1, :cond_0

    .line 111
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Ljavafx/beans/property/FloatPropertyBase;->valid:Z

    .line 112
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/beans/property/FloatPropertyBase;->invalidated()V

    .line 113
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/beans/property/FloatPropertyBase;->fireValueChangedEvent()V

    .line 115
    :cond_0
    return-void
.end method


# virtual methods
.method public addListener(Ljavafx/beans/InvalidationListener;)V
    .locals 6

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/FloatPropertyBase;
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/property/FloatPropertyBase;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    move-object v4, v0

    move-object v5, v1

    invoke-static {v3, v4, v5}, Lcom/sun/javafx/binding/ExpressionHelper;->addListener(Lcom/sun/javafx/binding/ExpressionHelper;Ljavafx/beans/value/ObservableValue;Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/ExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/beans/property/FloatPropertyBase;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    .line 79
    return-void
.end method

.method public addListener(Ljavafx/beans/value/ChangeListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ChangeListener",
            "<-",
            "Ljava/lang/Number;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/FloatPropertyBase;
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/value/ChangeListener;, "Ljavafx/beans/value/ChangeListener<-Ljava/lang/Number;>;"
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/property/FloatPropertyBase;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    move-object v4, v0

    move-object v5, v1

    invoke-static {v3, v4, v5}, Lcom/sun/javafx/binding/ExpressionHelper;->addListener(Lcom/sun/javafx/binding/ExpressionHelper;Ljavafx/beans/value/ObservableValue;Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/ExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/beans/property/FloatPropertyBase;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    .line 89
    return-void
.end method

.method public bridge synthetic asObject()Ljavafx/beans/binding/ObjectExpression;
    .locals 2

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/FloatPropertyBase;
    move-object v1, v0

    invoke-super {v1}, Ljavafx/beans/property/FloatProperty;->asObject()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/property/FloatPropertyBase;
    return-object v0
.end method

.method public bridge synthetic asObject()Ljavafx/beans/property/ReadOnlyObjectProperty;
    .locals 2

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/FloatPropertyBase;
    move-object v1, v0

    invoke-super {v1}, Ljavafx/beans/property/FloatProperty;->asObject()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/property/FloatPropertyBase;
    return-object v0
.end method

.method public bind(Ljavafx/beans/value/ObservableValue;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ObservableValue",
            "<+",
            "Ljava/lang/Number;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 164
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/FloatPropertyBase;
    move-object v1, p1

    .local v1, "rawObservable":Ljavafx/beans/value/ObservableValue;, "Ljavafx/beans/value/ObservableValue<+Ljava/lang/Number;>;"
    move-object v4, v1

    if-nez v4, :cond_0

    .line 165
    new-instance v4, Ljava/lang/NullPointerException;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const-string v6, "Cannot bind to null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 169
    :cond_0
    move-object v4, v1

    instance-of v4, v4, Ljavafx/beans/value/ObservableFloatValue;

    if-eqz v4, :cond_3

    .line 170
    move-object v4, v1

    check-cast v4, Ljavafx/beans/value/ObservableFloatValue;

    move-object v2, v4

    .line 198
    .local v2, "newObservable":Ljavafx/beans/value/ObservableFloatValue;
    :goto_0
    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Ljavafx/beans/property/FloatPropertyBase;->observable:Ljavafx/beans/value/ObservableFloatValue;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 199
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/beans/property/FloatPropertyBase;->unbind()V

    .line 200
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Ljavafx/beans/property/FloatPropertyBase;->observable:Ljavafx/beans/value/ObservableFloatValue;

    .line 201
    move-object v4, v0

    iget-object v4, v4, Ljavafx/beans/property/FloatPropertyBase;->listener:Ljavafx/beans/InvalidationListener;

    if-nez v4, :cond_1

    .line 202
    move-object v4, v0

    new-instance v5, Ljavafx/beans/property/FloatPropertyBase$Listener;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    invoke-direct {v6, v7}, Ljavafx/beans/property/FloatPropertyBase$Listener;-><init>(Ljavafx/beans/property/FloatPropertyBase;)V

    iput-object v5, v4, Ljavafx/beans/property/FloatPropertyBase;->listener:Ljavafx/beans/InvalidationListener;

    .line 204
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Ljavafx/beans/property/FloatPropertyBase;->observable:Ljavafx/beans/value/ObservableFloatValue;

    move-object v5, v0

    iget-object v5, v5, Ljavafx/beans/property/FloatPropertyBase;->listener:Ljavafx/beans/InvalidationListener;

    invoke-interface {v4, v5}, Ljavafx/beans/value/ObservableFloatValue;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 205
    move-object v4, v0

    invoke-direct {v4}, Ljavafx/beans/property/FloatPropertyBase;->markInvalid()V

    .line 207
    :cond_2
    return-void

    .line 171
    .end local v2    # "newObservable":Ljavafx/beans/value/ObservableFloatValue;
    :cond_3
    move-object v4, v1

    instance-of v4, v4, Ljavafx/beans/value/ObservableNumberValue;

    if-eqz v4, :cond_4

    .line 172
    move-object v4, v1

    check-cast v4, Ljavafx/beans/value/ObservableNumberValue;

    move-object v3, v4

    .line 173
    .local v3, "numberValue":Ljavafx/beans/value/ObservableNumberValue;
    new-instance v4, Ljavafx/beans/property/FloatPropertyBase$1;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    move-object v7, v1

    move-object v8, v3

    invoke-direct {v5, v6, v7, v8}, Ljavafx/beans/property/FloatPropertyBase$1;-><init>(Ljavafx/beans/property/FloatPropertyBase;Ljavafx/beans/value/ObservableValue;Ljavafx/beans/value/ObservableNumberValue;)V

    move-object v2, v4

    .line 183
    .restart local v2    # "newObservable":Ljavafx/beans/value/ObservableFloatValue;
    goto :goto_0

    .line 184
    .end local v2    # "newObservable":Ljavafx/beans/value/ObservableFloatValue;
    .end local v3    # "numberValue":Ljavafx/beans/value/ObservableNumberValue;
    :cond_4
    new-instance v4, Ljavafx/beans/property/FloatPropertyBase$2;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    move-object v7, v1

    invoke-direct {v5, v6, v7}, Ljavafx/beans/property/FloatPropertyBase$2;-><init>(Ljavafx/beans/property/FloatPropertyBase;Ljavafx/beans/value/ObservableValue;)V

    move-object v2, v4

    .restart local v2    # "newObservable":Ljavafx/beans/value/ObservableFloatValue;
    goto :goto_0
.end method

.method protected fireValueChangedEvent()V
    .locals 2

    .prologue
    .line 106
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/FloatPropertyBase;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/FloatPropertyBase;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    invoke-static {v1}, Lcom/sun/javafx/binding/ExpressionHelper;->fireValueChangedEvent(Lcom/sun/javafx/binding/ExpressionHelper;)V

    .line 107
    return-void
.end method

.method public get()F
    .locals 3

    .prologue
    .line 132
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/FloatPropertyBase;
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Ljavafx/beans/property/FloatPropertyBase;->valid:Z

    .line 133
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/FloatPropertyBase;->observable:Ljavafx/beans/value/ObservableFloatValue;

    if-nez v1, :cond_0

    move-object v1, v0

    iget v1, v1, Ljavafx/beans/property/FloatPropertyBase;->value:F

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/beans/property/FloatPropertyBase;
    return v0

    .restart local v0    # "this":Ljavafx/beans/property/FloatPropertyBase;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/FloatPropertyBase;->observable:Ljavafx/beans/value/ObservableFloatValue;

    invoke-interface {v1}, Ljavafx/beans/value/ObservableFloatValue;->get()F

    move-result v1

    goto :goto_0
.end method

.method protected invalidated()V
    .locals 0

    .prologue
    .line 125
    return-void
.end method

.method public isBound()Z
    .locals 2

    .prologue
    .line 156
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/FloatPropertyBase;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/FloatPropertyBase;->observable:Ljavafx/beans/value/ObservableFloatValue;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/beans/property/FloatPropertyBase;
    return v0

    .restart local v0    # "this":Ljavafx/beans/property/FloatPropertyBase;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeListener(Ljavafx/beans/InvalidationListener;)V
    .locals 5

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/FloatPropertyBase;
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/property/FloatPropertyBase;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/binding/ExpressionHelper;->removeListener(Lcom/sun/javafx/binding/ExpressionHelper;Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/ExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/beans/property/FloatPropertyBase;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    .line 84
    return-void
.end method

.method public removeListener(Ljavafx/beans/value/ChangeListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ChangeListener",
            "<-",
            "Ljava/lang/Number;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/FloatPropertyBase;
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/value/ChangeListener;, "Ljavafx/beans/value/ChangeListener<-Ljava/lang/Number;>;"
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/property/FloatPropertyBase;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/binding/ExpressionHelper;->removeListener(Lcom/sun/javafx/binding/ExpressionHelper;Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/ExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/beans/property/FloatPropertyBase;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    .line 94
    return-void
.end method

.method public set(F)V
    .locals 8

    .prologue
    .line 141
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/FloatPropertyBase;
    move v1, p1

    .local v1, "newValue":F
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/beans/property/FloatPropertyBase;->isBound()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 142
    new-instance v2, Ljava/lang/RuntimeException;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/beans/property/FloatPropertyBase;->getBean()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/beans/property/FloatPropertyBase;->getName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v0

    .line 143
    invoke-virtual {v6}, Ljavafx/beans/property/FloatPropertyBase;->getBean()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/beans/property/FloatPropertyBase;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "A bound value cannot be set."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    const-string v5, ""

    goto :goto_0

    .line 145
    :cond_1
    move-object v2, v0

    iget v2, v2, Ljavafx/beans/property/FloatPropertyBase;->value:F

    move v3, v1

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_2

    .line 146
    move-object v2, v0

    move v3, v1

    iput v3, v2, Ljavafx/beans/property/FloatPropertyBase;->value:F

    .line 147
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/FloatPropertyBase;->markInvalid()V

    .line 149
    :cond_2
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/FloatPropertyBase;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljava/lang/Number;

    invoke-super {v2, v3}, Ljavafx/beans/property/FloatProperty;->setValue(Ljava/lang/Number;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 227
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/FloatPropertyBase;
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/beans/property/FloatPropertyBase;->getBean()Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    .line 228
    .local v1, "bean":Ljava/lang/Object;
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/beans/property/FloatPropertyBase;->getName()Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 229
    .local v2, "name":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string v6, "FloatProperty ["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    .line 230
    .local v3, "result":Ljava/lang/StringBuilder;
    move-object v4, v1

    if-eqz v4, :cond_0

    .line 231
    move-object v4, v3

    const-string v5, "bean: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 233
    :cond_0
    move-object v4, v2

    if-eqz v4, :cond_1

    move-object v4, v2

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 234
    move-object v4, v3

    const-string v5, "name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 236
    :cond_1
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/beans/property/FloatPropertyBase;->isBound()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 237
    move-object v4, v3

    const-string v5, "bound, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 238
    move-object v4, v0

    iget-boolean v4, v4, Ljavafx/beans/property/FloatPropertyBase;->valid:Z

    if-eqz v4, :cond_2

    .line 239
    move-object v4, v3

    const-string v5, "value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/beans/property/FloatPropertyBase;->get()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 246
    :goto_0
    move-object v4, v3

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 247
    move-object v4, v3

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Ljavafx/beans/property/FloatPropertyBase;
    return-object v0

    .line 241
    .restart local v0    # "this":Ljavafx/beans/property/FloatPropertyBase;
    :cond_2
    move-object v4, v3

    const-string v5, "invalid"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    goto :goto_0

    .line 244
    :cond_3
    move-object v4, v3

    const-string v5, "value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/beans/property/FloatPropertyBase;->get()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    goto :goto_0
.end method

.method public unbind()V
    .locals 3

    .prologue
    .line 214
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/FloatPropertyBase;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/FloatPropertyBase;->observable:Ljavafx/beans/value/ObservableFloatValue;

    if-eqz v1, :cond_0

    .line 215
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/property/FloatPropertyBase;->observable:Ljavafx/beans/value/ObservableFloatValue;

    invoke-interface {v2}, Ljavafx/beans/value/ObservableFloatValue;->get()F

    move-result v2

    iput v2, v1, Ljavafx/beans/property/FloatPropertyBase;->value:F

    .line 216
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/FloatPropertyBase;->observable:Ljavafx/beans/value/ObservableFloatValue;

    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/property/FloatPropertyBase;->listener:Ljavafx/beans/InvalidationListener;

    invoke-interface {v1, v2}, Ljavafx/beans/value/ObservableFloatValue;->removeListener(Ljavafx/beans/InvalidationListener;)V

    .line 217
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Ljavafx/beans/property/FloatPropertyBase;->observable:Ljavafx/beans/value/ObservableFloatValue;

    .line 219
    :cond_0
    return-void
.end method

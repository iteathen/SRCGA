.class public abstract Ljavafx/beans/property/DoublePropertyBase;
.super Ljavafx/beans/property/DoubleProperty;
.source "DoublePropertyBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavafx/beans/property/DoublePropertyBase$Listener;
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

.field private observable:Ljavafx/beans/value/ObservableDoubleValue;

.field private valid:Z

.field private value:D


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/DoublePropertyBase;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/beans/property/DoubleProperty;-><init>()V

    .line 55
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Ljavafx/beans/property/DoublePropertyBase;->observable:Ljavafx/beans/value/ObservableDoubleValue;

    .line 56
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Ljavafx/beans/property/DoublePropertyBase;->listener:Ljavafx/beans/InvalidationListener;

    .line 57
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Ljavafx/beans/property/DoublePropertyBase;->valid:Z

    .line 58
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Ljavafx/beans/property/DoublePropertyBase;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    .line 64
    return-void
.end method

.method public constructor <init>(D)V
    .locals 7

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/DoublePropertyBase;
    move-wide v1, p1

    .local v1, "initialValue":D
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/beans/property/DoubleProperty;-><init>()V

    .line 55
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Ljavafx/beans/property/DoublePropertyBase;->observable:Ljavafx/beans/value/ObservableDoubleValue;

    .line 56
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Ljavafx/beans/property/DoublePropertyBase;->listener:Ljavafx/beans/InvalidationListener;

    .line 57
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Ljavafx/beans/property/DoublePropertyBase;->valid:Z

    .line 58
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Ljavafx/beans/property/DoublePropertyBase;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    .line 73
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/beans/property/DoublePropertyBase;->value:D

    .line 74
    return-void
.end method

.method static synthetic access$000(Ljavafx/beans/property/DoublePropertyBase;)V
    .locals 2

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "x0":Ljavafx/beans/property/DoublePropertyBase;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/beans/property/DoublePropertyBase;->markInvalid()V

    return-void
.end method

.method private markInvalid()V
    .locals 3

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/DoublePropertyBase;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/beans/property/DoublePropertyBase;->valid:Z

    if-eqz v1, :cond_0

    .line 111
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Ljavafx/beans/property/DoublePropertyBase;->valid:Z

    .line 112
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/beans/property/DoublePropertyBase;->invalidated()V

    .line 113
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/beans/property/DoublePropertyBase;->fireValueChangedEvent()V

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

    .local v0, "this":Ljavafx/beans/property/DoublePropertyBase;
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/property/DoublePropertyBase;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    move-object v4, v0

    move-object v5, v1

    invoke-static {v3, v4, v5}, Lcom/sun/javafx/binding/ExpressionHelper;->addListener(Lcom/sun/javafx/binding/ExpressionHelper;Ljavafx/beans/value/ObservableValue;Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/ExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/beans/property/DoublePropertyBase;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

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

    .local v0, "this":Ljavafx/beans/property/DoublePropertyBase;
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/value/ChangeListener;, "Ljavafx/beans/value/ChangeListener<-Ljava/lang/Number;>;"
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/property/DoublePropertyBase;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    move-object v4, v0

    move-object v5, v1

    invoke-static {v3, v4, v5}, Lcom/sun/javafx/binding/ExpressionHelper;->addListener(Lcom/sun/javafx/binding/ExpressionHelper;Ljavafx/beans/value/ObservableValue;Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/ExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/beans/property/DoublePropertyBase;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    .line 89
    return-void
.end method

.method public bridge synthetic asObject()Ljavafx/beans/binding/ObjectExpression;
    .locals 2

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/DoublePropertyBase;
    move-object v1, v0

    invoke-super {v1}, Ljavafx/beans/property/DoubleProperty;->asObject()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/property/DoublePropertyBase;
    return-object v0
.end method

.method public bridge synthetic asObject()Ljavafx/beans/property/ReadOnlyObjectProperty;
    .locals 2

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/DoublePropertyBase;
    move-object v1, v0

    invoke-super {v1}, Ljavafx/beans/property/DoubleProperty;->asObject()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/property/DoublePropertyBase;
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

    .local v0, "this":Ljavafx/beans/property/DoublePropertyBase;
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

    instance-of v4, v4, Ljavafx/beans/value/ObservableDoubleValue;

    if-eqz v4, :cond_3

    .line 170
    move-object v4, v1

    check-cast v4, Ljavafx/beans/value/ObservableDoubleValue;

    move-object v2, v4

    .line 197
    .local v2, "newObservable":Ljavafx/beans/value/ObservableDoubleValue;
    :goto_0
    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Ljavafx/beans/property/DoublePropertyBase;->observable:Ljavafx/beans/value/ObservableDoubleValue;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 198
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/beans/property/DoublePropertyBase;->unbind()V

    .line 199
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Ljavafx/beans/property/DoublePropertyBase;->observable:Ljavafx/beans/value/ObservableDoubleValue;

    .line 200
    move-object v4, v0

    iget-object v4, v4, Ljavafx/beans/property/DoublePropertyBase;->listener:Ljavafx/beans/InvalidationListener;

    if-nez v4, :cond_1

    .line 201
    move-object v4, v0

    new-instance v5, Ljavafx/beans/property/DoublePropertyBase$Listener;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    invoke-direct {v6, v7}, Ljavafx/beans/property/DoublePropertyBase$Listener;-><init>(Ljavafx/beans/property/DoublePropertyBase;)V

    iput-object v5, v4, Ljavafx/beans/property/DoublePropertyBase;->listener:Ljavafx/beans/InvalidationListener;

    .line 203
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Ljavafx/beans/property/DoublePropertyBase;->observable:Ljavafx/beans/value/ObservableDoubleValue;

    move-object v5, v0

    iget-object v5, v5, Ljavafx/beans/property/DoublePropertyBase;->listener:Ljavafx/beans/InvalidationListener;

    invoke-interface {v4, v5}, Ljavafx/beans/value/ObservableDoubleValue;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 204
    move-object v4, v0

    invoke-direct {v4}, Ljavafx/beans/property/DoublePropertyBase;->markInvalid()V

    .line 206
    :cond_2
    return-void

    .line 171
    .end local v2    # "newObservable":Ljavafx/beans/value/ObservableDoubleValue;
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
    new-instance v4, Ljavafx/beans/property/DoublePropertyBase$1;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    move-object v7, v1

    move-object v8, v3

    invoke-direct {v5, v6, v7, v8}, Ljavafx/beans/property/DoublePropertyBase$1;-><init>(Ljavafx/beans/property/DoublePropertyBase;Ljavafx/beans/value/ObservableValue;Ljavafx/beans/value/ObservableNumberValue;)V

    move-object v2, v4

    .line 183
    .restart local v2    # "newObservable":Ljavafx/beans/value/ObservableDoubleValue;
    goto :goto_0

    .line 184
    .end local v2    # "newObservable":Ljavafx/beans/value/ObservableDoubleValue;
    .end local v3    # "numberValue":Ljavafx/beans/value/ObservableNumberValue;
    :cond_4
    new-instance v4, Ljavafx/beans/property/DoublePropertyBase$2;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    move-object v7, v1

    invoke-direct {v5, v6, v7}, Ljavafx/beans/property/DoublePropertyBase$2;-><init>(Ljavafx/beans/property/DoublePropertyBase;Ljavafx/beans/value/ObservableValue;)V

    move-object v2, v4

    .restart local v2    # "newObservable":Ljavafx/beans/value/ObservableDoubleValue;
    goto :goto_0
.end method

.method protected fireValueChangedEvent()V
    .locals 2

    .prologue
    .line 106
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/DoublePropertyBase;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/DoublePropertyBase;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    invoke-static {v1}, Lcom/sun/javafx/binding/ExpressionHelper;->fireValueChangedEvent(Lcom/sun/javafx/binding/ExpressionHelper;)V

    .line 107
    return-void
.end method

.method public get()D
    .locals 4

    .prologue
    .line 132
    move-object v1, p0

    .local v1, "this":Ljavafx/beans/property/DoublePropertyBase;
    move-object v2, v1

    const/4 v3, 0x1

    iput-boolean v3, v2, Ljavafx/beans/property/DoublePropertyBase;->valid:Z

    .line 133
    move-object v2, v1

    iget-object v2, v2, Ljavafx/beans/property/DoublePropertyBase;->observable:Ljavafx/beans/value/ObservableDoubleValue;

    if-nez v2, :cond_0

    move-object v2, v1

    iget-wide v2, v2, Ljavafx/beans/property/DoublePropertyBase;->value:D

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/beans/property/DoublePropertyBase;
    return-wide v1

    .restart local v1    # "this":Ljavafx/beans/property/DoublePropertyBase;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/beans/property/DoublePropertyBase;->observable:Ljavafx/beans/value/ObservableDoubleValue;

    invoke-interface {v2}, Ljavafx/beans/value/ObservableDoubleValue;->get()D

    move-result-wide v2

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

    .local v0, "this":Ljavafx/beans/property/DoublePropertyBase;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/DoublePropertyBase;->observable:Ljavafx/beans/value/ObservableDoubleValue;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/beans/property/DoublePropertyBase;
    return v0

    .restart local v0    # "this":Ljavafx/beans/property/DoublePropertyBase;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeListener(Ljavafx/beans/InvalidationListener;)V
    .locals 5

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/DoublePropertyBase;
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/property/DoublePropertyBase;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/binding/ExpressionHelper;->removeListener(Lcom/sun/javafx/binding/ExpressionHelper;Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/ExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/beans/property/DoublePropertyBase;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

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

    .local v0, "this":Ljavafx/beans/property/DoublePropertyBase;
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/value/ChangeListener;, "Ljavafx/beans/value/ChangeListener<-Ljava/lang/Number;>;"
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/property/DoublePropertyBase;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/binding/ExpressionHelper;->removeListener(Lcom/sun/javafx/binding/ExpressionHelper;Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/ExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/beans/property/DoublePropertyBase;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    .line 94
    return-void
.end method

.method public set(D)V
    .locals 11

    .prologue
    .line 141
    move-object v1, p0

    .local v1, "this":Ljavafx/beans/property/DoublePropertyBase;
    move-wide v2, p1

    .local v2, "newValue":D
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/beans/property/DoublePropertyBase;->isBound()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 142
    new-instance v4, Ljava/lang/RuntimeException;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/beans/property/DoublePropertyBase;->getBean()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_0

    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/beans/property/DoublePropertyBase;->getName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object v8, v1

    .line 143
    invoke-virtual {v8}, Ljavafx/beans/property/DoublePropertyBase;->getBean()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/beans/property/DoublePropertyBase;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_0
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "A bound value cannot be set."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    const-string v7, ""

    goto :goto_0

    .line 145
    :cond_1
    move-object v4, v1

    iget-wide v4, v4, Ljavafx/beans/property/DoublePropertyBase;->value:D

    move-wide v6, v2

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_2

    .line 146
    move-object v4, v1

    move-wide v5, v2

    iput-wide v5, v4, Ljavafx/beans/property/DoublePropertyBase;->value:D

    .line 147
    move-object v4, v1

    invoke-direct {v4}, Ljavafx/beans/property/DoublePropertyBase;->markInvalid()V

    .line 149
    :cond_2
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/DoublePropertyBase;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljava/lang/Number;

    invoke-super {v2, v3}, Ljavafx/beans/property/DoubleProperty;->setValue(Ljava/lang/Number;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .prologue
    .line 226
    move-object v1, p0

    .local v1, "this":Ljavafx/beans/property/DoublePropertyBase;
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/beans/property/DoublePropertyBase;->getBean()Ljava/lang/Object;

    move-result-object v5

    move-object v2, v5

    .line 227
    .local v2, "bean":Ljava/lang/Object;
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/beans/property/DoublePropertyBase;->getName()Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 228
    .local v3, "name":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string v7, "DoubleProperty ["

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v4, v5

    .line 229
    .local v4, "result":Ljava/lang/StringBuilder;
    move-object v5, v2

    if-eqz v5, :cond_0

    .line 230
    move-object v5, v4

    const-string v6, "bean: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 232
    :cond_0
    move-object v5, v3

    if-eqz v5, :cond_1

    move-object v5, v3

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 233
    move-object v5, v4

    const-string v6, "name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 235
    :cond_1
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/beans/property/DoublePropertyBase;->isBound()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 236
    move-object v5, v4

    const-string v6, "bound, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 237
    move-object v5, v1

    iget-boolean v5, v5, Ljavafx/beans/property/DoublePropertyBase;->valid:Z

    if-eqz v5, :cond_2

    .line 238
    move-object v5, v4

    const-string v6, "value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/beans/property/DoublePropertyBase;->get()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 245
    :goto_0
    move-object v5, v4

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 246
    move-object v5, v4

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    .end local v1    # "this":Ljavafx/beans/property/DoublePropertyBase;
    return-object v1

    .line 240
    .restart local v1    # "this":Ljavafx/beans/property/DoublePropertyBase;
    :cond_2
    move-object v5, v4

    const-string v6, "invalid"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    goto :goto_0

    .line 243
    :cond_3
    move-object v5, v4

    const-string v6, "value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/beans/property/DoublePropertyBase;->get()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    goto :goto_0
.end method

.method public unbind()V
    .locals 4

    .prologue
    .line 213
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/DoublePropertyBase;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/DoublePropertyBase;->observable:Ljavafx/beans/value/ObservableDoubleValue;

    if-eqz v1, :cond_0

    .line 214
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/property/DoublePropertyBase;->observable:Ljavafx/beans/value/ObservableDoubleValue;

    invoke-interface {v2}, Ljavafx/beans/value/ObservableDoubleValue;->get()D

    move-result-wide v2

    iput-wide v2, v1, Ljavafx/beans/property/DoublePropertyBase;->value:D

    .line 215
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/DoublePropertyBase;->observable:Ljavafx/beans/value/ObservableDoubleValue;

    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/property/DoublePropertyBase;->listener:Ljavafx/beans/InvalidationListener;

    invoke-interface {v1, v2}, Ljavafx/beans/value/ObservableDoubleValue;->removeListener(Ljavafx/beans/InvalidationListener;)V

    .line 216
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Ljavafx/beans/property/DoublePropertyBase;->observable:Ljavafx/beans/value/ObservableDoubleValue;

    .line 218
    :cond_0
    return-void
.end method

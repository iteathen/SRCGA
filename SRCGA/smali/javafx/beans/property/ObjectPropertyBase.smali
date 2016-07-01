.class public abstract Ljavafx/beans/property/ObjectPropertyBase;
.super Ljavafx/beans/property/ObjectProperty;
.source "ObjectPropertyBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavafx/beans/property/ObjectPropertyBase$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljavafx/beans/property/ObjectProperty",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private helper:Lcom/sun/javafx/binding/ExpressionHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/javafx/binding/ExpressionHelper",
            "<TT;>;"
        }
    .end annotation
.end field

.field private listener:Ljavafx/beans/InvalidationListener;

.field private observable:Ljavafx/beans/value/ObservableValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/value/ObservableValue",
            "<+TT;>;"
        }
    .end annotation
.end field

.field private valid:Z

.field private value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ObjectPropertyBase;, "Ljavafx/beans/property/ObjectPropertyBase<TT;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/beans/property/ObjectProperty;-><init>()V

    .line 54
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Ljavafx/beans/property/ObjectPropertyBase;->observable:Ljavafx/beans/value/ObservableValue;

    .line 55
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Ljavafx/beans/property/ObjectPropertyBase;->listener:Ljavafx/beans/InvalidationListener;

    .line 56
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Ljavafx/beans/property/ObjectPropertyBase;->valid:Z

    .line 57
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Ljavafx/beans/property/ObjectPropertyBase;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ObjectPropertyBase;, "Ljavafx/beans/property/ObjectPropertyBase<TT;>;"
    move-object v1, p1

    .local v1, "initialValue":Ljava/lang/Object;, "TT;"
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/ObjectProperty;-><init>()V

    .line 54
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Ljavafx/beans/property/ObjectPropertyBase;->observable:Ljavafx/beans/value/ObservableValue;

    .line 55
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Ljavafx/beans/property/ObjectPropertyBase;->listener:Ljavafx/beans/InvalidationListener;

    .line 56
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Ljavafx/beans/property/ObjectPropertyBase;->valid:Z

    .line 57
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Ljavafx/beans/property/ObjectPropertyBase;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    .line 72
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/beans/property/ObjectPropertyBase;->value:Ljava/lang/Object;

    .line 73
    return-void
.end method

.method static synthetic access$000(Ljavafx/beans/property/ObjectPropertyBase;)V
    .locals 2

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "x0":Ljavafx/beans/property/ObjectPropertyBase;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/beans/property/ObjectPropertyBase;->markInvalid()V

    return-void
.end method

.method private markInvalid()V
    .locals 3

    .prologue
    .line 109
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ObjectPropertyBase;, "Ljavafx/beans/property/ObjectPropertyBase<TT;>;"
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/beans/property/ObjectPropertyBase;->valid:Z

    if-eqz v1, :cond_0

    .line 110
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Ljavafx/beans/property/ObjectPropertyBase;->valid:Z

    .line 111
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectPropertyBase;->invalidated()V

    .line 112
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectPropertyBase;->fireValueChangedEvent()V

    .line 114
    :cond_0
    return-void
.end method


# virtual methods
.method public addListener(Ljavafx/beans/InvalidationListener;)V
    .locals 6

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ObjectPropertyBase;, "Ljavafx/beans/property/ObjectPropertyBase<TT;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/property/ObjectPropertyBase;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    move-object v4, v0

    move-object v5, v1

    invoke-static {v3, v4, v5}, Lcom/sun/javafx/binding/ExpressionHelper;->addListener(Lcom/sun/javafx/binding/ExpressionHelper;Ljavafx/beans/value/ObservableValue;Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/ExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/beans/property/ObjectPropertyBase;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    .line 78
    return-void
.end method

.method public addListener(Ljavafx/beans/value/ChangeListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ChangeListener",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ObjectPropertyBase;, "Ljavafx/beans/property/ObjectPropertyBase<TT;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/value/ChangeListener;, "Ljavafx/beans/value/ChangeListener<-TT;>;"
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/property/ObjectPropertyBase;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    move-object v4, v0

    move-object v5, v1

    invoke-static {v3, v4, v5}, Lcom/sun/javafx/binding/ExpressionHelper;->addListener(Lcom/sun/javafx/binding/ExpressionHelper;Ljavafx/beans/value/ObservableValue;Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/ExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/beans/property/ObjectPropertyBase;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    .line 88
    return-void
.end method

.method public bind(Ljavafx/beans/value/ObservableValue;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ObservableValue",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 163
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ObjectPropertyBase;, "Ljavafx/beans/property/ObjectPropertyBase<TT;>;"
    move-object v1, p1

    .local v1, "newObservable":Ljavafx/beans/value/ObservableValue;, "Ljavafx/beans/value/ObservableValue<+TT;>;"
    move-object v2, v1

    if-nez v2, :cond_0

    .line 164
    new-instance v2, Ljava/lang/NullPointerException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string v4, "Cannot bind to null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 167
    :cond_0
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/property/ObjectPropertyBase;->observable:Ljavafx/beans/value/ObservableValue;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 168
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/beans/property/ObjectPropertyBase;->unbind()V

    .line 169
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/beans/property/ObjectPropertyBase;->observable:Ljavafx/beans/value/ObservableValue;

    .line 170
    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/property/ObjectPropertyBase;->listener:Ljavafx/beans/InvalidationListener;

    if-nez v2, :cond_1

    .line 171
    move-object v2, v0

    new-instance v3, Ljavafx/beans/property/ObjectPropertyBase$Listener;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Ljavafx/beans/property/ObjectPropertyBase$Listener;-><init>(Ljavafx/beans/property/ObjectPropertyBase;)V

    iput-object v3, v2, Ljavafx/beans/property/ObjectPropertyBase;->listener:Ljavafx/beans/InvalidationListener;

    .line 173
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/property/ObjectPropertyBase;->observable:Ljavafx/beans/value/ObservableValue;

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/property/ObjectPropertyBase;->listener:Ljavafx/beans/InvalidationListener;

    invoke-interface {v2, v3}, Ljavafx/beans/value/ObservableValue;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 174
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/ObjectPropertyBase;->markInvalid()V

    .line 176
    :cond_2
    return-void
.end method

.method protected fireValueChangedEvent()V
    .locals 2

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ObjectPropertyBase;, "Ljavafx/beans/property/ObjectPropertyBase<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/ObjectPropertyBase;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    invoke-static {v1}, Lcom/sun/javafx/binding/ExpressionHelper;->fireValueChangedEvent(Lcom/sun/javafx/binding/ExpressionHelper;)V

    .line 106
    return-void
.end method

.method public get()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 131
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ObjectPropertyBase;, "Ljavafx/beans/property/ObjectPropertyBase<TT;>;"
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Ljavafx/beans/property/ObjectPropertyBase;->valid:Z

    .line 132
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/ObjectPropertyBase;->observable:Ljavafx/beans/value/ObservableValue;

    if-nez v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/ObjectPropertyBase;->value:Ljava/lang/Object;

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/property/ObjectPropertyBase;, "Ljavafx/beans/property/ObjectPropertyBase<TT;>;"
    return-object v0

    .restart local v0    # "this":Ljavafx/beans/property/ObjectPropertyBase;, "Ljavafx/beans/property/ObjectPropertyBase<TT;>;"
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/ObjectPropertyBase;->observable:Ljavafx/beans/value/ObservableValue;

    invoke-interface {v1}, Ljavafx/beans/value/ObservableValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method protected invalidated()V
    .locals 0

    .prologue
    .line 124
    .local p0, "this":Ljavafx/beans/property/ObjectPropertyBase;, "Ljavafx/beans/property/ObjectPropertyBase<TT;>;"
    return-void
.end method

.method public isBound()Z
    .locals 2

    .prologue
    .line 155
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ObjectPropertyBase;, "Ljavafx/beans/property/ObjectPropertyBase<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/ObjectPropertyBase;->observable:Ljavafx/beans/value/ObservableValue;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/beans/property/ObjectPropertyBase;, "Ljavafx/beans/property/ObjectPropertyBase<TT;>;"
    return v0

    .restart local v0    # "this":Ljavafx/beans/property/ObjectPropertyBase;, "Ljavafx/beans/property/ObjectPropertyBase<TT;>;"
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeListener(Ljavafx/beans/InvalidationListener;)V
    .locals 5

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ObjectPropertyBase;, "Ljavafx/beans/property/ObjectPropertyBase<TT;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/property/ObjectPropertyBase;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/binding/ExpressionHelper;->removeListener(Lcom/sun/javafx/binding/ExpressionHelper;Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/ExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/beans/property/ObjectPropertyBase;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    .line 83
    return-void
.end method

.method public removeListener(Ljavafx/beans/value/ChangeListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ChangeListener",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ObjectPropertyBase;, "Ljavafx/beans/property/ObjectPropertyBase<TT;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/value/ChangeListener;, "Ljavafx/beans/value/ChangeListener<-TT;>;"
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/property/ObjectPropertyBase;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/binding/ExpressionHelper;->removeListener(Lcom/sun/javafx/binding/ExpressionHelper;Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/ExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/beans/property/ObjectPropertyBase;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    .line 93
    return-void
.end method

.method public set(Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 140
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ObjectPropertyBase;, "Ljavafx/beans/property/ObjectPropertyBase<TT;>;"
    move-object v1, p1

    .local v1, "newValue":Ljava/lang/Object;, "TT;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/beans/property/ObjectPropertyBase;->isBound()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 141
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

    invoke-virtual {v5}, Ljavafx/beans/property/ObjectPropertyBase;->getBean()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/beans/property/ObjectPropertyBase;->getName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v0

    .line 142
    invoke-virtual {v6}, Ljavafx/beans/property/ObjectPropertyBase;->getBean()Ljava/lang/Object;

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

    invoke-virtual {v6}, Ljavafx/beans/property/ObjectPropertyBase;->getName()Ljava/lang/String;

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

    .line 144
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/property/ObjectPropertyBase;->value:Ljava/lang/Object;

    move-object v3, v1

    if-eq v2, v3, :cond_2

    .line 145
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/beans/property/ObjectPropertyBase;->value:Ljava/lang/Object;

    .line 146
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/ObjectPropertyBase;->markInvalid()V

    .line 148
    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 196
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ObjectPropertyBase;, "Ljavafx/beans/property/ObjectPropertyBase<TT;>;"
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/beans/property/ObjectPropertyBase;->getBean()Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    .line 197
    .local v1, "bean":Ljava/lang/Object;
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/beans/property/ObjectPropertyBase;->getName()Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 198
    .local v2, "name":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string v6, "ObjectProperty ["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    .line 199
    .local v3, "result":Ljava/lang/StringBuilder;
    move-object v4, v1

    if-eqz v4, :cond_0

    .line 200
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

    .line 202
    :cond_0
    move-object v4, v2

    if-eqz v4, :cond_1

    move-object v4, v2

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 203
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

    .line 205
    :cond_1
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/beans/property/ObjectPropertyBase;->isBound()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 206
    move-object v4, v3

    const-string v5, "bound, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 207
    move-object v4, v0

    iget-boolean v4, v4, Ljavafx/beans/property/ObjectPropertyBase;->valid:Z

    if-eqz v4, :cond_2

    .line 208
    move-object v4, v3

    const-string v5, "value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/beans/property/ObjectPropertyBase;->get()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 215
    :goto_0
    move-object v4, v3

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 216
    move-object v4, v3

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Ljavafx/beans/property/ObjectPropertyBase;, "Ljavafx/beans/property/ObjectPropertyBase<TT;>;"
    return-object v0

    .line 210
    .restart local v0    # "this":Ljavafx/beans/property/ObjectPropertyBase;, "Ljavafx/beans/property/ObjectPropertyBase<TT;>;"
    :cond_2
    move-object v4, v3

    const-string v5, "invalid"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    goto :goto_0

    .line 213
    :cond_3
    move-object v4, v3

    const-string v5, "value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/beans/property/ObjectPropertyBase;->get()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    goto :goto_0
.end method

.method public unbind()V
    .locals 3

    .prologue
    .line 183
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ObjectPropertyBase;, "Ljavafx/beans/property/ObjectPropertyBase<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/ObjectPropertyBase;->observable:Ljavafx/beans/value/ObservableValue;

    if-eqz v1, :cond_0

    .line 184
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/property/ObjectPropertyBase;->observable:Ljavafx/beans/value/ObservableValue;

    invoke-interface {v2}, Ljavafx/beans/value/ObservableValue;->getValue()Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v1, Ljavafx/beans/property/ObjectPropertyBase;->value:Ljava/lang/Object;

    .line 185
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/ObjectPropertyBase;->observable:Ljavafx/beans/value/ObservableValue;

    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/property/ObjectPropertyBase;->listener:Ljavafx/beans/InvalidationListener;

    invoke-interface {v1, v2}, Ljavafx/beans/value/ObservableValue;->removeListener(Ljavafx/beans/InvalidationListener;)V

    .line 186
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Ljavafx/beans/property/ObjectPropertyBase;->observable:Ljavafx/beans/value/ObservableValue;

    .line 188
    :cond_0
    return-void
.end method

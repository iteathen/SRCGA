.class public abstract Ljavafx/beans/property/StringPropertyBase;
.super Ljavafx/beans/property/StringProperty;
.source "StringPropertyBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavafx/beans/property/StringPropertyBase$Listener;
    }
.end annotation


# instance fields
.field private helper:Lcom/sun/javafx/binding/ExpressionHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/javafx/binding/ExpressionHelper",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private listener:Ljavafx/beans/InvalidationListener;

.field private observable:Ljavafx/beans/value/ObservableValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/value/ObservableValue",
            "<+",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private valid:Z

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/StringPropertyBase;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/beans/property/StringProperty;-><init>()V

    .line 52
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Ljavafx/beans/property/StringPropertyBase;->observable:Ljavafx/beans/value/ObservableValue;

    .line 53
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Ljavafx/beans/property/StringPropertyBase;->listener:Ljavafx/beans/InvalidationListener;

    .line 54
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Ljavafx/beans/property/StringPropertyBase;->valid:Z

    .line 55
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Ljavafx/beans/property/StringPropertyBase;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/StringPropertyBase;
    move-object v1, p1

    .local v1, "initialValue":Ljava/lang/String;
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/StringProperty;-><init>()V

    .line 52
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Ljavafx/beans/property/StringPropertyBase;->observable:Ljavafx/beans/value/ObservableValue;

    .line 53
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Ljavafx/beans/property/StringPropertyBase;->listener:Ljavafx/beans/InvalidationListener;

    .line 54
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Ljavafx/beans/property/StringPropertyBase;->valid:Z

    .line 55
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Ljavafx/beans/property/StringPropertyBase;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    .line 70
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/beans/property/StringPropertyBase;->value:Ljava/lang/String;

    .line 71
    return-void
.end method

.method static synthetic access$000(Ljavafx/beans/property/StringPropertyBase;)V
    .locals 2

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "x0":Ljavafx/beans/property/StringPropertyBase;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/beans/property/StringPropertyBase;->markInvalid()V

    return-void
.end method

.method private markInvalid()V
    .locals 3

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/StringPropertyBase;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/beans/property/StringPropertyBase;->valid:Z

    if-eqz v1, :cond_0

    .line 108
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Ljavafx/beans/property/StringPropertyBase;->valid:Z

    .line 109
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/beans/property/StringPropertyBase;->invalidated()V

    .line 110
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/beans/property/StringPropertyBase;->fireValueChangedEvent()V

    .line 112
    :cond_0
    return-void
.end method


# virtual methods
.method public addListener(Ljavafx/beans/InvalidationListener;)V
    .locals 6

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/StringPropertyBase;
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/property/StringPropertyBase;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    move-object v4, v0

    move-object v5, v1

    invoke-static {v3, v4, v5}, Lcom/sun/javafx/binding/ExpressionHelper;->addListener(Lcom/sun/javafx/binding/ExpressionHelper;Ljavafx/beans/value/ObservableValue;Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/ExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/beans/property/StringPropertyBase;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    .line 76
    return-void
.end method

.method public addListener(Ljavafx/beans/value/ChangeListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ChangeListener",
            "<-",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/StringPropertyBase;
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/value/ChangeListener;, "Ljavafx/beans/value/ChangeListener<-Ljava/lang/String;>;"
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/property/StringPropertyBase;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    move-object v4, v0

    move-object v5, v1

    invoke-static {v3, v4, v5}, Lcom/sun/javafx/binding/ExpressionHelper;->addListener(Lcom/sun/javafx/binding/ExpressionHelper;Ljavafx/beans/value/ObservableValue;Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/ExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/beans/property/StringPropertyBase;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    .line 86
    return-void
.end method

.method public bind(Ljavafx/beans/value/ObservableValue;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ObservableValue",
            "<+",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 161
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/StringPropertyBase;
    move-object v1, p1

    .local v1, "newObservable":Ljavafx/beans/value/ObservableValue;, "Ljavafx/beans/value/ObservableValue<+Ljava/lang/String;>;"
    move-object v2, v1

    if-nez v2, :cond_0

    .line 162
    new-instance v2, Ljava/lang/NullPointerException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string v4, "Cannot bind to null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 164
    :cond_0
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/property/StringPropertyBase;->observable:Ljavafx/beans/value/ObservableValue;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 165
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/beans/property/StringPropertyBase;->unbind()V

    .line 166
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/beans/property/StringPropertyBase;->observable:Ljavafx/beans/value/ObservableValue;

    .line 167
    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/property/StringPropertyBase;->listener:Ljavafx/beans/InvalidationListener;

    if-nez v2, :cond_1

    .line 168
    move-object v2, v0

    new-instance v3, Ljavafx/beans/property/StringPropertyBase$Listener;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Ljavafx/beans/property/StringPropertyBase$Listener;-><init>(Ljavafx/beans/property/StringPropertyBase;)V

    iput-object v3, v2, Ljavafx/beans/property/StringPropertyBase;->listener:Ljavafx/beans/InvalidationListener;

    .line 170
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/property/StringPropertyBase;->observable:Ljavafx/beans/value/ObservableValue;

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/property/StringPropertyBase;->listener:Ljavafx/beans/InvalidationListener;

    invoke-interface {v2, v3}, Ljavafx/beans/value/ObservableValue;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 171
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/StringPropertyBase;->markInvalid()V

    .line 173
    :cond_2
    return-void
.end method

.method protected fireValueChangedEvent()V
    .locals 2

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/StringPropertyBase;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/StringPropertyBase;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    invoke-static {v1}, Lcom/sun/javafx/binding/ExpressionHelper;->fireValueChangedEvent(Lcom/sun/javafx/binding/ExpressionHelper;)V

    .line 104
    return-void
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/StringPropertyBase;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/beans/property/StringPropertyBase;->get()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/property/StringPropertyBase;
    return-object v0
.end method

.method public get()Ljava/lang/String;
    .locals 3

    .prologue
    .line 129
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/StringPropertyBase;
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Ljavafx/beans/property/StringPropertyBase;->valid:Z

    .line 130
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/StringPropertyBase;->observable:Ljavafx/beans/value/ObservableValue;

    if-nez v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/StringPropertyBase;->value:Ljava/lang/String;

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/property/StringPropertyBase;
    return-object v0

    .restart local v0    # "this":Ljavafx/beans/property/StringPropertyBase;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/StringPropertyBase;->observable:Ljavafx/beans/value/ObservableValue;

    invoke-interface {v1}, Ljavafx/beans/value/ObservableValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0
.end method

.method protected invalidated()V
    .locals 0

    .prologue
    .line 122
    return-void
.end method

.method public isBound()Z
    .locals 2

    .prologue
    .line 153
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/StringPropertyBase;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/StringPropertyBase;->observable:Ljavafx/beans/value/ObservableValue;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/beans/property/StringPropertyBase;
    return v0

    .restart local v0    # "this":Ljavafx/beans/property/StringPropertyBase;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeListener(Ljavafx/beans/InvalidationListener;)V
    .locals 5

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/StringPropertyBase;
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/property/StringPropertyBase;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/binding/ExpressionHelper;->removeListener(Lcom/sun/javafx/binding/ExpressionHelper;Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/ExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/beans/property/StringPropertyBase;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    .line 81
    return-void
.end method

.method public removeListener(Ljavafx/beans/value/ChangeListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ChangeListener",
            "<-",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/StringPropertyBase;
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/value/ChangeListener;, "Ljavafx/beans/value/ChangeListener<-Ljava/lang/String;>;"
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/property/StringPropertyBase;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/binding/ExpressionHelper;->removeListener(Lcom/sun/javafx/binding/ExpressionHelper;Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/ExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/beans/property/StringPropertyBase;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    .line 91
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/StringPropertyBase;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljavafx/beans/property/StringPropertyBase;->set(Ljava/lang/String;)V

    return-void
.end method

.method public set(Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 138
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/StringPropertyBase;
    move-object v1, p1

    .local v1, "newValue":Ljava/lang/String;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/beans/property/StringPropertyBase;->isBound()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 139
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

    invoke-virtual {v5}, Ljavafx/beans/property/StringPropertyBase;->getBean()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/beans/property/StringPropertyBase;->getName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v0

    .line 140
    invoke-virtual {v6}, Ljavafx/beans/property/StringPropertyBase;->getBean()Ljava/lang/Object;

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

    invoke-virtual {v6}, Ljavafx/beans/property/StringPropertyBase;->getName()Ljava/lang/String;

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

    .line 142
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/property/StringPropertyBase;->value:Ljava/lang/String;

    if-nez v2, :cond_3

    move-object v2, v1

    if-eqz v2, :cond_2

    .line 143
    :goto_1
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/beans/property/StringPropertyBase;->value:Ljava/lang/String;

    .line 144
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/StringPropertyBase;->markInvalid()V

    .line 146
    :cond_2
    return-void

    .line 142
    :cond_3
    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/property/StringPropertyBase;->value:Ljava/lang/String;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 193
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/StringPropertyBase;
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/beans/property/StringPropertyBase;->getBean()Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    .line 194
    .local v1, "bean":Ljava/lang/Object;
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/beans/property/StringPropertyBase;->getName()Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 195
    .local v2, "name":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string v6, "StringProperty ["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    .line 196
    .local v3, "result":Ljava/lang/StringBuilder;
    move-object v4, v1

    if-eqz v4, :cond_0

    .line 197
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

    .line 199
    :cond_0
    move-object v4, v2

    if-eqz v4, :cond_1

    move-object v4, v2

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 200
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

    .line 202
    :cond_1
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/beans/property/StringPropertyBase;->isBound()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 203
    move-object v4, v3

    const-string v5, "bound, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 204
    move-object v4, v0

    iget-boolean v4, v4, Ljavafx/beans/property/StringPropertyBase;->valid:Z

    if-eqz v4, :cond_2

    .line 205
    move-object v4, v3

    const-string v5, "value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/beans/property/StringPropertyBase;->get()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 212
    :goto_0
    move-object v4, v3

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 213
    move-object v4, v3

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Ljavafx/beans/property/StringPropertyBase;
    return-object v0

    .line 207
    .restart local v0    # "this":Ljavafx/beans/property/StringPropertyBase;
    :cond_2
    move-object v4, v3

    const-string v5, "invalid"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    goto :goto_0

    .line 210
    :cond_3
    move-object v4, v3

    const-string v5, "value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/beans/property/StringPropertyBase;->get()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    goto :goto_0
.end method

.method public unbind()V
    .locals 3

    .prologue
    .line 180
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/StringPropertyBase;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/StringPropertyBase;->observable:Ljavafx/beans/value/ObservableValue;

    if-eqz v1, :cond_0

    .line 181
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/property/StringPropertyBase;->observable:Ljavafx/beans/value/ObservableValue;

    invoke-interface {v2}, Ljavafx/beans/value/ObservableValue;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v1, Ljavafx/beans/property/StringPropertyBase;->value:Ljava/lang/String;

    .line 182
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/StringPropertyBase;->observable:Ljavafx/beans/value/ObservableValue;

    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/property/StringPropertyBase;->listener:Ljavafx/beans/InvalidationListener;

    invoke-interface {v1, v2}, Ljavafx/beans/value/ObservableValue;->removeListener(Ljavafx/beans/InvalidationListener;)V

    .line 183
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Ljavafx/beans/property/StringPropertyBase;->observable:Ljavafx/beans/value/ObservableValue;

    .line 185
    :cond_0
    return-void
.end method

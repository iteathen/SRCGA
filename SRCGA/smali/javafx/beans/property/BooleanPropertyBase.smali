.class public abstract Ljavafx/beans/property/BooleanPropertyBase;
.super Ljavafx/beans/property/BooleanProperty;
.source "BooleanPropertyBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavafx/beans/property/BooleanPropertyBase$Listener;
    }
.end annotation


# instance fields
.field private helper:Lcom/sun/javafx/binding/ExpressionHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/javafx/binding/ExpressionHelper",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private listener:Ljavafx/beans/InvalidationListener;

.field private observable:Ljavafx/beans/value/ObservableBooleanValue;

.field private valid:Z

.field private value:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/BooleanPropertyBase;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/beans/property/BooleanProperty;-><init>()V

    .line 52
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Ljavafx/beans/property/BooleanPropertyBase;->observable:Ljavafx/beans/value/ObservableBooleanValue;

    .line 53
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Ljavafx/beans/property/BooleanPropertyBase;->listener:Ljavafx/beans/InvalidationListener;

    .line 54
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Ljavafx/beans/property/BooleanPropertyBase;->valid:Z

    .line 55
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Ljavafx/beans/property/BooleanPropertyBase;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    .line 61
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 4

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/BooleanPropertyBase;
    move v1, p1

    .local v1, "initialValue":Z
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/BooleanProperty;-><init>()V

    .line 52
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Ljavafx/beans/property/BooleanPropertyBase;->observable:Ljavafx/beans/value/ObservableBooleanValue;

    .line 53
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Ljavafx/beans/property/BooleanPropertyBase;->listener:Ljavafx/beans/InvalidationListener;

    .line 54
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Ljavafx/beans/property/BooleanPropertyBase;->valid:Z

    .line 55
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Ljavafx/beans/property/BooleanPropertyBase;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    .line 70
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Ljavafx/beans/property/BooleanPropertyBase;->value:Z

    .line 71
    return-void
.end method

.method static synthetic access$000(Ljavafx/beans/property/BooleanPropertyBase;)V
    .locals 2

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "x0":Ljavafx/beans/property/BooleanPropertyBase;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/beans/property/BooleanPropertyBase;->markInvalid()V

    return-void
.end method

.method private markInvalid()V
    .locals 3

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/BooleanPropertyBase;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/beans/property/BooleanPropertyBase;->valid:Z

    if-eqz v1, :cond_0

    .line 108
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Ljavafx/beans/property/BooleanPropertyBase;->valid:Z

    .line 109
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanPropertyBase;->invalidated()V

    .line 110
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanPropertyBase;->fireValueChangedEvent()V

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

    .local v0, "this":Ljavafx/beans/property/BooleanPropertyBase;
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/property/BooleanPropertyBase;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    move-object v4, v0

    move-object v5, v1

    invoke-static {v3, v4, v5}, Lcom/sun/javafx/binding/ExpressionHelper;->addListener(Lcom/sun/javafx/binding/ExpressionHelper;Ljavafx/beans/value/ObservableValue;Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/ExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/beans/property/BooleanPropertyBase;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

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
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/BooleanPropertyBase;
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/value/ChangeListener;, "Ljavafx/beans/value/ChangeListener<-Ljava/lang/Boolean;>;"
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/property/BooleanPropertyBase;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    move-object v4, v0

    move-object v5, v1

    invoke-static {v3, v4, v5}, Lcom/sun/javafx/binding/ExpressionHelper;->addListener(Lcom/sun/javafx/binding/ExpressionHelper;Ljavafx/beans/value/ObservableValue;Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/ExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/beans/property/BooleanPropertyBase;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    .line 86
    return-void
.end method

.method public bridge synthetic asObject()Ljavafx/beans/binding/ObjectExpression;
    .locals 2

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/BooleanPropertyBase;
    move-object v1, v0

    invoke-super {v1}, Ljavafx/beans/property/BooleanProperty;->asObject()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/property/BooleanPropertyBase;
    return-object v0
.end method

.method public bridge synthetic asObject()Ljavafx/beans/property/ReadOnlyObjectProperty;
    .locals 2

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/BooleanPropertyBase;
    move-object v1, v0

    invoke-super {v1}, Ljavafx/beans/property/BooleanProperty;->asObject()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/property/BooleanPropertyBase;
    return-object v0
.end method

.method public bind(Ljavafx/beans/value/ObservableValue;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ObservableValue",
            "<+",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 162
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/BooleanPropertyBase;
    move-object v1, p1

    .local v1, "rawObservable":Ljavafx/beans/value/ObservableValue;, "Ljavafx/beans/value/ObservableValue<+Ljava/lang/Boolean;>;"
    move-object v3, v1

    if-nez v3, :cond_0

    .line 163
    new-instance v3, Ljava/lang/NullPointerException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string v5, "Cannot bind to null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 166
    :cond_0
    move-object v3, v1

    instance-of v3, v3, Ljavafx/beans/value/ObservableBooleanValue;

    if-eqz v3, :cond_3

    move-object v3, v1

    check-cast v3, Ljavafx/beans/value/ObservableBooleanValue;

    :goto_0
    move-object v2, v3

    .line 179
    .local v2, "newObservable":Ljavafx/beans/value/ObservableBooleanValue;
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Ljavafx/beans/property/BooleanPropertyBase;->observable:Ljavafx/beans/value/ObservableBooleanValue;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 180
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/beans/property/BooleanPropertyBase;->unbind()V

    .line 181
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Ljavafx/beans/property/BooleanPropertyBase;->observable:Ljavafx/beans/value/ObservableBooleanValue;

    .line 182
    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/property/BooleanPropertyBase;->listener:Ljavafx/beans/InvalidationListener;

    if-nez v3, :cond_1

    .line 183
    move-object v3, v0

    new-instance v4, Ljavafx/beans/property/BooleanPropertyBase$Listener;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Ljavafx/beans/property/BooleanPropertyBase$Listener;-><init>(Ljavafx/beans/property/BooleanPropertyBase;)V

    iput-object v4, v3, Ljavafx/beans/property/BooleanPropertyBase;->listener:Ljavafx/beans/InvalidationListener;

    .line 185
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/property/BooleanPropertyBase;->observable:Ljavafx/beans/value/ObservableBooleanValue;

    move-object v4, v0

    iget-object v4, v4, Ljavafx/beans/property/BooleanPropertyBase;->listener:Ljavafx/beans/InvalidationListener;

    invoke-interface {v3, v4}, Ljavafx/beans/value/ObservableBooleanValue;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 186
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/beans/property/BooleanPropertyBase;->markInvalid()V

    .line 188
    :cond_2
    return-void

    .line 166
    .end local v2    # "newObservable":Ljavafx/beans/value/ObservableBooleanValue;
    :cond_3
    new-instance v3, Ljavafx/beans/property/BooleanPropertyBase$1;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Ljavafx/beans/property/BooleanPropertyBase$1;-><init>(Ljavafx/beans/property/BooleanPropertyBase;Ljavafx/beans/value/ObservableValue;)V

    goto :goto_0
.end method

.method protected fireValueChangedEvent()V
    .locals 2

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/BooleanPropertyBase;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/BooleanPropertyBase;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    invoke-static {v1}, Lcom/sun/javafx/binding/ExpressionHelper;->fireValueChangedEvent(Lcom/sun/javafx/binding/ExpressionHelper;)V

    .line 104
    return-void
.end method

.method public get()Z
    .locals 3

    .prologue
    .line 129
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/BooleanPropertyBase;
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Ljavafx/beans/property/BooleanPropertyBase;->valid:Z

    .line 130
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/BooleanPropertyBase;->observable:Ljavafx/beans/value/ObservableBooleanValue;

    if-nez v1, :cond_0

    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/beans/property/BooleanPropertyBase;->value:Z

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/beans/property/BooleanPropertyBase;
    return v0

    .restart local v0    # "this":Ljavafx/beans/property/BooleanPropertyBase;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/BooleanPropertyBase;->observable:Ljavafx/beans/value/ObservableBooleanValue;

    invoke-interface {v1}, Ljavafx/beans/value/ObservableBooleanValue;->get()Z

    move-result v1

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

    .local v0, "this":Ljavafx/beans/property/BooleanPropertyBase;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/BooleanPropertyBase;->observable:Ljavafx/beans/value/ObservableBooleanValue;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/beans/property/BooleanPropertyBase;
    return v0

    .restart local v0    # "this":Ljavafx/beans/property/BooleanPropertyBase;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeListener(Ljavafx/beans/InvalidationListener;)V
    .locals 5

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/BooleanPropertyBase;
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/property/BooleanPropertyBase;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/binding/ExpressionHelper;->removeListener(Lcom/sun/javafx/binding/ExpressionHelper;Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/ExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/beans/property/BooleanPropertyBase;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

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
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/BooleanPropertyBase;
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/value/ChangeListener;, "Ljavafx/beans/value/ChangeListener<-Ljava/lang/Boolean;>;"
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/property/BooleanPropertyBase;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/binding/ExpressionHelper;->removeListener(Lcom/sun/javafx/binding/ExpressionHelper;Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/ExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/beans/property/BooleanPropertyBase;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    .line 91
    return-void
.end method

.method public set(Z)V
    .locals 8

    .prologue
    .line 138
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/BooleanPropertyBase;
    move v1, p1

    .local v1, "newValue":Z
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/beans/property/BooleanPropertyBase;->isBound()Z

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

    invoke-virtual {v5}, Ljavafx/beans/property/BooleanPropertyBase;->getBean()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/beans/property/BooleanPropertyBase;->getName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v0

    .line 140
    invoke-virtual {v6}, Ljavafx/beans/property/BooleanPropertyBase;->getBean()Ljava/lang/Object;

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

    invoke-virtual {v6}, Ljavafx/beans/property/BooleanPropertyBase;->getName()Ljava/lang/String;

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

    iget-boolean v2, v2, Ljavafx/beans/property/BooleanPropertyBase;->value:Z

    move v3, v1

    if-eq v2, v3, :cond_2

    .line 143
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Ljavafx/beans/property/BooleanPropertyBase;->value:Z

    .line 144
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/BooleanPropertyBase;->markInvalid()V

    .line 146
    :cond_2
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/BooleanPropertyBase;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljava/lang/Boolean;

    invoke-super {v2, v3}, Ljavafx/beans/property/BooleanProperty;->setValue(Ljava/lang/Boolean;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 208
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/BooleanPropertyBase;
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/beans/property/BooleanPropertyBase;->getBean()Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    .line 209
    .local v1, "bean":Ljava/lang/Object;
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/beans/property/BooleanPropertyBase;->getName()Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 210
    .local v2, "name":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string v6, "BooleanProperty ["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    .line 211
    .local v3, "result":Ljava/lang/StringBuilder;
    move-object v4, v1

    if-eqz v4, :cond_0

    .line 212
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

    .line 214
    :cond_0
    move-object v4, v2

    if-eqz v4, :cond_1

    move-object v4, v2

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 215
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

    .line 217
    :cond_1
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/beans/property/BooleanPropertyBase;->isBound()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 218
    move-object v4, v3

    const-string v5, "bound, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 219
    move-object v4, v0

    iget-boolean v4, v4, Ljavafx/beans/property/BooleanPropertyBase;->valid:Z

    if-eqz v4, :cond_2

    .line 220
    move-object v4, v3

    const-string v5, "value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/beans/property/BooleanPropertyBase;->get()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 227
    :goto_0
    move-object v4, v3

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 228
    move-object v4, v3

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Ljavafx/beans/property/BooleanPropertyBase;
    return-object v0

    .line 222
    .restart local v0    # "this":Ljavafx/beans/property/BooleanPropertyBase;
    :cond_2
    move-object v4, v3

    const-string v5, "invalid"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    goto :goto_0

    .line 225
    :cond_3
    move-object v4, v3

    const-string v5, "value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/beans/property/BooleanPropertyBase;->get()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    goto :goto_0
.end method

.method public unbind()V
    .locals 3

    .prologue
    .line 195
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/BooleanPropertyBase;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/BooleanPropertyBase;->observable:Ljavafx/beans/value/ObservableBooleanValue;

    if-eqz v1, :cond_0

    .line 196
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/property/BooleanPropertyBase;->observable:Ljavafx/beans/value/ObservableBooleanValue;

    invoke-interface {v2}, Ljavafx/beans/value/ObservableBooleanValue;->get()Z

    move-result v2

    iput-boolean v2, v1, Ljavafx/beans/property/BooleanPropertyBase;->value:Z

    .line 197
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/BooleanPropertyBase;->observable:Ljavafx/beans/value/ObservableBooleanValue;

    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/property/BooleanPropertyBase;->listener:Ljavafx/beans/InvalidationListener;

    invoke-interface {v1, v2}, Ljavafx/beans/value/ObservableBooleanValue;->removeListener(Ljavafx/beans/InvalidationListener;)V

    .line 198
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Ljavafx/beans/property/BooleanPropertyBase;->observable:Ljavafx/beans/value/ObservableBooleanValue;

    .line 200
    :cond_0
    return-void
.end method

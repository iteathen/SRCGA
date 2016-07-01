.class public Ljavafx/beans/property/ReadOnlyBooleanWrapper;
.super Ljavafx/beans/property/SimpleBooleanProperty;
.source "ReadOnlyBooleanWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavafx/beans/property/ReadOnlyBooleanWrapper$ReadOnlyPropertyImpl;
    }
.end annotation


# instance fields
.field private readOnlyProperty:Ljavafx/beans/property/ReadOnlyBooleanWrapper$ReadOnlyPropertyImpl;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlyBooleanWrapper;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/beans/property/SimpleBooleanProperty;-><init>()V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlyBooleanWrapper;
    move-object v1, p1

    .local v1, "bean":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "name":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/SimpleBooleanProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;Z)V
    .locals 8

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlyBooleanWrapper;
    move-object v1, p1

    .local v1, "bean":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "name":Ljava/lang/String;
    move v3, p3

    .local v3, "initialValue":Z
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    invoke-direct {v4, v5, v6, v7}, Ljavafx/beans/property/SimpleBooleanProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 86
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 4

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlyBooleanWrapper;
    move v1, p1

    .local v1, "initialValue":Z
    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Ljavafx/beans/property/SimpleBooleanProperty;-><init>(Z)V

    .line 59
    return-void
.end method


# virtual methods
.method public addListener(Ljavafx/beans/InvalidationListener;)V
    .locals 4

    .prologue
    .line 106
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlyBooleanWrapper;
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/beans/property/ReadOnlyBooleanWrapper;->getReadOnlyProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyBooleanProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 107
    return-void
.end method

.method public addListener(Ljavafx/beans/value/ChangeListener;)V
    .locals 4
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
    .line 125
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlyBooleanWrapper;
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/value/ChangeListener;, "Ljavafx/beans/value/ChangeListener<-Ljava/lang/Boolean;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/beans/property/ReadOnlyBooleanWrapper;->getReadOnlyProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyBooleanProperty;->addListener(Ljavafx/beans/value/ChangeListener;)V

    .line 126
    return-void
.end method

.method protected fireValueChangedEvent()V
    .locals 2

    .prologue
    .line 143
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlyBooleanWrapper;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/ReadOnlyBooleanWrapper;->readOnlyProperty:Ljavafx/beans/property/ReadOnlyBooleanWrapper$ReadOnlyPropertyImpl;

    if-eqz v1, :cond_0

    .line 144
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/ReadOnlyBooleanWrapper;->readOnlyProperty:Ljavafx/beans/property/ReadOnlyBooleanWrapper$ReadOnlyPropertyImpl;

    invoke-static {v1}, Ljavafx/beans/property/ReadOnlyBooleanWrapper$ReadOnlyPropertyImpl;->access$100(Ljavafx/beans/property/ReadOnlyBooleanWrapper$ReadOnlyPropertyImpl;)V

    .line 146
    :cond_0
    return-void
.end method

.method public getReadOnlyProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;
    .locals 7

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlyBooleanWrapper;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/ReadOnlyBooleanWrapper;->readOnlyProperty:Ljavafx/beans/property/ReadOnlyBooleanWrapper$ReadOnlyPropertyImpl;

    if-nez v1, :cond_0

    .line 96
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/ReadOnlyBooleanWrapper$ReadOnlyPropertyImpl;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/ReadOnlyBooleanWrapper$ReadOnlyPropertyImpl;-><init>(Ljavafx/beans/property/ReadOnlyBooleanWrapper;Ljavafx/beans/property/ReadOnlyBooleanWrapper$1;)V

    iput-object v2, v1, Ljavafx/beans/property/ReadOnlyBooleanWrapper;->readOnlyProperty:Ljavafx/beans/property/ReadOnlyBooleanWrapper$ReadOnlyPropertyImpl;

    .line 98
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/ReadOnlyBooleanWrapper;->readOnlyProperty:Ljavafx/beans/property/ReadOnlyBooleanWrapper$ReadOnlyPropertyImpl;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/property/ReadOnlyBooleanWrapper;
    return-object v0
.end method

.method public removeListener(Ljavafx/beans/InvalidationListener;)V
    .locals 4

    .prologue
    .line 115
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlyBooleanWrapper;
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/property/ReadOnlyBooleanWrapper;->readOnlyProperty:Ljavafx/beans/property/ReadOnlyBooleanWrapper$ReadOnlyPropertyImpl;

    if-eqz v2, :cond_0

    .line 116
    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/property/ReadOnlyBooleanWrapper;->readOnlyProperty:Ljavafx/beans/property/ReadOnlyBooleanWrapper$ReadOnlyPropertyImpl;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyBooleanWrapper$ReadOnlyPropertyImpl;->removeListener(Ljavafx/beans/InvalidationListener;)V

    .line 118
    :cond_0
    return-void
.end method

.method public removeListener(Ljavafx/beans/value/ChangeListener;)V
    .locals 4
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
    .line 133
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlyBooleanWrapper;
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/value/ChangeListener;, "Ljavafx/beans/value/ChangeListener<-Ljava/lang/Boolean;>;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/property/ReadOnlyBooleanWrapper;->readOnlyProperty:Ljavafx/beans/property/ReadOnlyBooleanWrapper$ReadOnlyPropertyImpl;

    if-eqz v2, :cond_0

    .line 134
    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/property/ReadOnlyBooleanWrapper;->readOnlyProperty:Ljavafx/beans/property/ReadOnlyBooleanWrapper$ReadOnlyPropertyImpl;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyBooleanWrapper$ReadOnlyPropertyImpl;->removeListener(Ljavafx/beans/value/ChangeListener;)V

    .line 136
    :cond_0
    return-void
.end method

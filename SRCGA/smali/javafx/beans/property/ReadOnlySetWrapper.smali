.class public Ljavafx/beans/property/ReadOnlySetWrapper;
.super Ljavafx/beans/property/SimpleSetProperty;
.source "ReadOnlySetWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavafx/beans/property/ReadOnlySetWrapper$ReadOnlyPropertyImpl;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljavafx/beans/property/SimpleSetProperty",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private readOnlyProperty:Ljavafx/beans/property/ReadOnlySetWrapper$ReadOnlyPropertyImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ReadOnlySetWrapper",
            "<TE;>.ReadOnlyPropertyImpl;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlySetWrapper;, "Ljavafx/beans/property/ReadOnlySetWrapper<TE;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/beans/property/SimpleSetProperty;-><init>()V

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlySetWrapper;, "Ljavafx/beans/property/ReadOnlySetWrapper<TE;>;"
    move-object v1, p1

    .local v1, "bean":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "name":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/SimpleSetProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;Ljavafx/collections/ObservableSet;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljavafx/collections/ObservableSet",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlySetWrapper;, "Ljavafx/beans/property/ReadOnlySetWrapper<TE;>;"
    move-object v1, p1

    .local v1, "bean":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "name":Ljava/lang/String;
    move-object v3, p3

    .local v3, "initialValue":Ljavafx/collections/ObservableSet;, "Ljavafx/collections/ObservableSet<TE;>;"
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Ljavafx/beans/property/SimpleSetProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljavafx/collections/ObservableSet;)V

    .line 89
    return-void
.end method

.method public constructor <init>(Ljavafx/collections/ObservableSet;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ObservableSet",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlySetWrapper;, "Ljavafx/beans/property/ReadOnlySetWrapper<TE;>;"
    move-object v1, p1

    .local v1, "initialValue":Ljavafx/collections/ObservableSet;, "Ljavafx/collections/ObservableSet<TE;>;"
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/beans/property/SimpleSetProperty;-><init>(Ljavafx/collections/ObservableSet;)V

    .line 62
    return-void
.end method


# virtual methods
.method public addListener(Ljavafx/beans/InvalidationListener;)V
    .locals 4

    .prologue
    .line 109
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlySetWrapper;, "Ljavafx/beans/property/ReadOnlySetWrapper<TE;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/beans/property/ReadOnlySetWrapper;->getReadOnlyProperty()Ljavafx/beans/property/ReadOnlySetProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlySetProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 110
    return-void
.end method

.method public addListener(Ljavafx/beans/value/ChangeListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ChangeListener",
            "<-",
            "Ljavafx/collections/ObservableSet",
            "<TE;>;>;)V"
        }
    .end annotation

    .prologue
    .line 127
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlySetWrapper;, "Ljavafx/beans/property/ReadOnlySetWrapper<TE;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/value/ChangeListener;, "Ljavafx/beans/value/ChangeListener<-Ljavafx/collections/ObservableSet<TE;>;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/beans/property/ReadOnlySetWrapper;->getReadOnlyProperty()Ljavafx/beans/property/ReadOnlySetProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlySetProperty;->addListener(Ljavafx/beans/value/ChangeListener;)V

    .line 128
    return-void
.end method

.method public addListener(Ljavafx/collections/SetChangeListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/SetChangeListener",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 145
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlySetWrapper;, "Ljavafx/beans/property/ReadOnlySetWrapper<TE;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/collections/SetChangeListener;, "Ljavafx/collections/SetChangeListener<-TE;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/beans/property/ReadOnlySetWrapper;->getReadOnlyProperty()Ljavafx/beans/property/ReadOnlySetProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlySetProperty;->addListener(Ljavafx/collections/SetChangeListener;)V

    .line 146
    return-void
.end method

.method protected fireValueChangedEvent()V
    .locals 2

    .prologue
    .line 163
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlySetWrapper;, "Ljavafx/beans/property/ReadOnlySetWrapper<TE;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/ReadOnlySetWrapper;->readOnlyProperty:Ljavafx/beans/property/ReadOnlySetWrapper$ReadOnlyPropertyImpl;

    if-eqz v1, :cond_0

    .line 164
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/ReadOnlySetWrapper;->readOnlyProperty:Ljavafx/beans/property/ReadOnlySetWrapper$ReadOnlyPropertyImpl;

    invoke-static {v1}, Ljavafx/beans/property/ReadOnlySetWrapper$ReadOnlyPropertyImpl;->access$100(Ljavafx/beans/property/ReadOnlySetWrapper$ReadOnlyPropertyImpl;)V

    .line 166
    :cond_0
    return-void
.end method

.method protected fireValueChangedEvent(Ljavafx/collections/SetChangeListener$Change;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/SetChangeListener$Change",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 173
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlySetWrapper;, "Ljavafx/beans/property/ReadOnlySetWrapper<TE;>;"
    move-object v1, p1

    .local v1, "change":Ljavafx/collections/SetChangeListener$Change;, "Ljavafx/collections/SetChangeListener$Change<+TE;>;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/property/ReadOnlySetWrapper;->readOnlyProperty:Ljavafx/beans/property/ReadOnlySetWrapper$ReadOnlyPropertyImpl;

    if-eqz v2, :cond_0

    .line 174
    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/property/ReadOnlySetWrapper;->readOnlyProperty:Ljavafx/beans/property/ReadOnlySetWrapper$ReadOnlyPropertyImpl;

    move-object v3, v1

    invoke-static {v2, v3}, Ljavafx/beans/property/ReadOnlySetWrapper$ReadOnlyPropertyImpl;->access$200(Ljavafx/beans/property/ReadOnlySetWrapper$ReadOnlyPropertyImpl;Ljavafx/collections/SetChangeListener$Change;)V

    .line 176
    :cond_0
    return-void
.end method

.method public getReadOnlyProperty()Ljavafx/beans/property/ReadOnlySetProperty;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ReadOnlySetProperty",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlySetWrapper;, "Ljavafx/beans/property/ReadOnlySetWrapper<TE;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/ReadOnlySetWrapper;->readOnlyProperty:Ljavafx/beans/property/ReadOnlySetWrapper$ReadOnlyPropertyImpl;

    if-nez v1, :cond_0

    .line 99
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/ReadOnlySetWrapper$ReadOnlyPropertyImpl;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/ReadOnlySetWrapper$ReadOnlyPropertyImpl;-><init>(Ljavafx/beans/property/ReadOnlySetWrapper;Ljavafx/beans/property/ReadOnlySetWrapper$1;)V

    iput-object v2, v1, Ljavafx/beans/property/ReadOnlySetWrapper;->readOnlyProperty:Ljavafx/beans/property/ReadOnlySetWrapper$ReadOnlyPropertyImpl;

    .line 101
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/ReadOnlySetWrapper;->readOnlyProperty:Ljavafx/beans/property/ReadOnlySetWrapper$ReadOnlyPropertyImpl;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/property/ReadOnlySetWrapper;, "Ljavafx/beans/property/ReadOnlySetWrapper<TE;>;"
    return-object v0
.end method

.method public removeListener(Ljavafx/beans/InvalidationListener;)V
    .locals 4

    .prologue
    .line 117
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlySetWrapper;, "Ljavafx/beans/property/ReadOnlySetWrapper<TE;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/property/ReadOnlySetWrapper;->readOnlyProperty:Ljavafx/beans/property/ReadOnlySetWrapper$ReadOnlyPropertyImpl;

    if-eqz v2, :cond_0

    .line 118
    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/property/ReadOnlySetWrapper;->readOnlyProperty:Ljavafx/beans/property/ReadOnlySetWrapper$ReadOnlyPropertyImpl;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlySetWrapper$ReadOnlyPropertyImpl;->removeListener(Ljavafx/beans/InvalidationListener;)V

    .line 120
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
            "Ljavafx/collections/ObservableSet",
            "<TE;>;>;)V"
        }
    .end annotation

    .prologue
    .line 135
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlySetWrapper;, "Ljavafx/beans/property/ReadOnlySetWrapper<TE;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/value/ChangeListener;, "Ljavafx/beans/value/ChangeListener<-Ljavafx/collections/ObservableSet<TE;>;>;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/property/ReadOnlySetWrapper;->readOnlyProperty:Ljavafx/beans/property/ReadOnlySetWrapper$ReadOnlyPropertyImpl;

    if-eqz v2, :cond_0

    .line 136
    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/property/ReadOnlySetWrapper;->readOnlyProperty:Ljavafx/beans/property/ReadOnlySetWrapper$ReadOnlyPropertyImpl;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlySetWrapper$ReadOnlyPropertyImpl;->removeListener(Ljavafx/beans/value/ChangeListener;)V

    .line 138
    :cond_0
    return-void
.end method

.method public removeListener(Ljavafx/collections/SetChangeListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/SetChangeListener",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 153
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlySetWrapper;, "Ljavafx/beans/property/ReadOnlySetWrapper<TE;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/collections/SetChangeListener;, "Ljavafx/collections/SetChangeListener<-TE;>;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/property/ReadOnlySetWrapper;->readOnlyProperty:Ljavafx/beans/property/ReadOnlySetWrapper$ReadOnlyPropertyImpl;

    if-eqz v2, :cond_0

    .line 154
    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/property/ReadOnlySetWrapper;->readOnlyProperty:Ljavafx/beans/property/ReadOnlySetWrapper$ReadOnlyPropertyImpl;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlySetWrapper$ReadOnlyPropertyImpl;->removeListener(Ljavafx/collections/SetChangeListener;)V

    .line 156
    :cond_0
    return-void
.end method

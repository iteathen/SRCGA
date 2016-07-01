.class public Ljavafx/beans/property/ReadOnlyMapWrapper;
.super Ljavafx/beans/property/SimpleMapProperty;
.source "ReadOnlyMapWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavafx/beans/property/ReadOnlyMapWrapper$ReadOnlyPropertyImpl;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljavafx/beans/property/SimpleMapProperty",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private readOnlyProperty:Ljavafx/beans/property/ReadOnlyMapWrapper$ReadOnlyPropertyImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ReadOnlyMapWrapper",
            "<TK;TV;>.ReadOnlyPropertyImpl;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlyMapWrapper;, "Ljavafx/beans/property/ReadOnlyMapWrapper<TK;TV;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/beans/property/SimpleMapProperty;-><init>()V

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlyMapWrapper;, "Ljavafx/beans/property/ReadOnlyMapWrapper<TK;TV;>;"
    move-object v1, p1

    .local v1, "bean":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "name":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/SimpleMapProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;Ljavafx/collections/ObservableMap;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljavafx/collections/ObservableMap",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlyMapWrapper;, "Ljavafx/beans/property/ReadOnlyMapWrapper<TK;TV;>;"
    move-object v1, p1

    .local v1, "bean":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "name":Ljava/lang/String;
    move-object v3, p3

    .local v3, "initialValue":Ljavafx/collections/ObservableMap;, "Ljavafx/collections/ObservableMap<TK;TV;>;"
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Ljavafx/beans/property/SimpleMapProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljavafx/collections/ObservableMap;)V

    .line 89
    return-void
.end method

.method public constructor <init>(Ljavafx/collections/ObservableMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ObservableMap",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlyMapWrapper;, "Ljavafx/beans/property/ReadOnlyMapWrapper<TK;TV;>;"
    move-object v1, p1

    .local v1, "initialValue":Ljavafx/collections/ObservableMap;, "Ljavafx/collections/ObservableMap<TK;TV;>;"
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/beans/property/SimpleMapProperty;-><init>(Ljavafx/collections/ObservableMap;)V

    .line 62
    return-void
.end method


# virtual methods
.method public addListener(Ljavafx/beans/InvalidationListener;)V
    .locals 4

    .prologue
    .line 109
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlyMapWrapper;, "Ljavafx/beans/property/ReadOnlyMapWrapper<TK;TV;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/beans/property/ReadOnlyMapWrapper;->getReadOnlyProperty()Ljavafx/beans/property/ReadOnlyMapProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyMapProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

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
            "Ljavafx/collections/ObservableMap",
            "<TK;TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 127
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlyMapWrapper;, "Ljavafx/beans/property/ReadOnlyMapWrapper<TK;TV;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/value/ChangeListener;, "Ljavafx/beans/value/ChangeListener<-Ljavafx/collections/ObservableMap<TK;TV;>;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/beans/property/ReadOnlyMapWrapper;->getReadOnlyProperty()Ljavafx/beans/property/ReadOnlyMapProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyMapProperty;->addListener(Ljavafx/beans/value/ChangeListener;)V

    .line 128
    return-void
.end method

.method public addListener(Ljavafx/collections/MapChangeListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/MapChangeListener",
            "<-TK;-TV;>;)V"
        }
    .end annotation

    .prologue
    .line 145
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlyMapWrapper;, "Ljavafx/beans/property/ReadOnlyMapWrapper<TK;TV;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/collections/MapChangeListener;, "Ljavafx/collections/MapChangeListener<-TK;-TV;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/beans/property/ReadOnlyMapWrapper;->getReadOnlyProperty()Ljavafx/beans/property/ReadOnlyMapProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyMapProperty;->addListener(Ljavafx/collections/MapChangeListener;)V

    .line 146
    return-void
.end method

.method protected fireValueChangedEvent()V
    .locals 2

    .prologue
    .line 163
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlyMapWrapper;, "Ljavafx/beans/property/ReadOnlyMapWrapper<TK;TV;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/ReadOnlyMapWrapper;->readOnlyProperty:Ljavafx/beans/property/ReadOnlyMapWrapper$ReadOnlyPropertyImpl;

    if-eqz v1, :cond_0

    .line 164
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/ReadOnlyMapWrapper;->readOnlyProperty:Ljavafx/beans/property/ReadOnlyMapWrapper$ReadOnlyPropertyImpl;

    invoke-static {v1}, Ljavafx/beans/property/ReadOnlyMapWrapper$ReadOnlyPropertyImpl;->access$100(Ljavafx/beans/property/ReadOnlyMapWrapper$ReadOnlyPropertyImpl;)V

    .line 166
    :cond_0
    return-void
.end method

.method protected fireValueChangedEvent(Ljavafx/collections/MapChangeListener$Change;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/MapChangeListener$Change",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 173
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlyMapWrapper;, "Ljavafx/beans/property/ReadOnlyMapWrapper<TK;TV;>;"
    move-object v1, p1

    .local v1, "change":Ljavafx/collections/MapChangeListener$Change;, "Ljavafx/collections/MapChangeListener$Change<+TK;+TV;>;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/property/ReadOnlyMapWrapper;->readOnlyProperty:Ljavafx/beans/property/ReadOnlyMapWrapper$ReadOnlyPropertyImpl;

    if-eqz v2, :cond_0

    .line 174
    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/property/ReadOnlyMapWrapper;->readOnlyProperty:Ljavafx/beans/property/ReadOnlyMapWrapper$ReadOnlyPropertyImpl;

    move-object v3, v1

    invoke-static {v2, v3}, Ljavafx/beans/property/ReadOnlyMapWrapper$ReadOnlyPropertyImpl;->access$200(Ljavafx/beans/property/ReadOnlyMapWrapper$ReadOnlyPropertyImpl;Ljavafx/collections/MapChangeListener$Change;)V

    .line 176
    :cond_0
    return-void
.end method

.method public getReadOnlyProperty()Ljavafx/beans/property/ReadOnlyMapProperty;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ReadOnlyMapProperty",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlyMapWrapper;, "Ljavafx/beans/property/ReadOnlyMapWrapper<TK;TV;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/ReadOnlyMapWrapper;->readOnlyProperty:Ljavafx/beans/property/ReadOnlyMapWrapper$ReadOnlyPropertyImpl;

    if-nez v1, :cond_0

    .line 99
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/ReadOnlyMapWrapper$ReadOnlyPropertyImpl;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/ReadOnlyMapWrapper$ReadOnlyPropertyImpl;-><init>(Ljavafx/beans/property/ReadOnlyMapWrapper;Ljavafx/beans/property/ReadOnlyMapWrapper$1;)V

    iput-object v2, v1, Ljavafx/beans/property/ReadOnlyMapWrapper;->readOnlyProperty:Ljavafx/beans/property/ReadOnlyMapWrapper$ReadOnlyPropertyImpl;

    .line 101
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/ReadOnlyMapWrapper;->readOnlyProperty:Ljavafx/beans/property/ReadOnlyMapWrapper$ReadOnlyPropertyImpl;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/property/ReadOnlyMapWrapper;, "Ljavafx/beans/property/ReadOnlyMapWrapper<TK;TV;>;"
    return-object v0
.end method

.method public removeListener(Ljavafx/beans/InvalidationListener;)V
    .locals 4

    .prologue
    .line 117
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlyMapWrapper;, "Ljavafx/beans/property/ReadOnlyMapWrapper<TK;TV;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/property/ReadOnlyMapWrapper;->readOnlyProperty:Ljavafx/beans/property/ReadOnlyMapWrapper$ReadOnlyPropertyImpl;

    if-eqz v2, :cond_0

    .line 118
    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/property/ReadOnlyMapWrapper;->readOnlyProperty:Ljavafx/beans/property/ReadOnlyMapWrapper$ReadOnlyPropertyImpl;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyMapWrapper$ReadOnlyPropertyImpl;->removeListener(Ljavafx/beans/InvalidationListener;)V

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
            "Ljavafx/collections/ObservableMap",
            "<TK;TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 135
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlyMapWrapper;, "Ljavafx/beans/property/ReadOnlyMapWrapper<TK;TV;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/value/ChangeListener;, "Ljavafx/beans/value/ChangeListener<-Ljavafx/collections/ObservableMap<TK;TV;>;>;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/property/ReadOnlyMapWrapper;->readOnlyProperty:Ljavafx/beans/property/ReadOnlyMapWrapper$ReadOnlyPropertyImpl;

    if-eqz v2, :cond_0

    .line 136
    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/property/ReadOnlyMapWrapper;->readOnlyProperty:Ljavafx/beans/property/ReadOnlyMapWrapper$ReadOnlyPropertyImpl;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyMapWrapper$ReadOnlyPropertyImpl;->removeListener(Ljavafx/beans/value/ChangeListener;)V

    .line 138
    :cond_0
    return-void
.end method

.method public removeListener(Ljavafx/collections/MapChangeListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/MapChangeListener",
            "<-TK;-TV;>;)V"
        }
    .end annotation

    .prologue
    .line 153
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlyMapWrapper;, "Ljavafx/beans/property/ReadOnlyMapWrapper<TK;TV;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/collections/MapChangeListener;, "Ljavafx/collections/MapChangeListener<-TK;-TV;>;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/property/ReadOnlyMapWrapper;->readOnlyProperty:Ljavafx/beans/property/ReadOnlyMapWrapper$ReadOnlyPropertyImpl;

    if-eqz v2, :cond_0

    .line 154
    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/property/ReadOnlyMapWrapper;->readOnlyProperty:Ljavafx/beans/property/ReadOnlyMapWrapper$ReadOnlyPropertyImpl;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyMapWrapper$ReadOnlyPropertyImpl;->removeListener(Ljavafx/collections/MapChangeListener;)V

    .line 156
    :cond_0
    return-void
.end method

.class public Ljavafx/beans/property/ReadOnlyIntegerWrapper;
.super Ljavafx/beans/property/SimpleIntegerProperty;
.source "ReadOnlyIntegerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavafx/beans/property/ReadOnlyIntegerWrapper$ReadOnlyPropertyImpl;
    }
.end annotation


# instance fields
.field private readOnlyProperty:Ljavafx/beans/property/ReadOnlyIntegerWrapper$ReadOnlyPropertyImpl;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlyIntegerWrapper;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/beans/property/SimpleIntegerProperty;-><init>()V

    .line 49
    return-void
.end method

.method public constructor <init>(I)V
    .locals 4

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlyIntegerWrapper;
    move v1, p1

    .local v1, "initialValue":I
    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Ljavafx/beans/property/SimpleIntegerProperty;-><init>(I)V

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlyIntegerWrapper;
    move-object v1, p1

    .local v1, "bean":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "name":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/SimpleIntegerProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;I)V
    .locals 8

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlyIntegerWrapper;
    move-object v1, p1

    .local v1, "bean":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "name":Ljava/lang/String;
    move v3, p3

    .local v3, "initialValue":I
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    invoke-direct {v4, v5, v6, v7}, Ljavafx/beans/property/SimpleIntegerProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 85
    return-void
.end method


# virtual methods
.method public addListener(Ljavafx/beans/InvalidationListener;)V
    .locals 4

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlyIntegerWrapper;
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/beans/property/ReadOnlyIntegerWrapper;->getReadOnlyProperty()Ljavafx/beans/property/ReadOnlyIntegerProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyIntegerProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 106
    return-void
.end method

.method public addListener(Ljavafx/beans/value/ChangeListener;)V
    .locals 4
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
    .line 123
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlyIntegerWrapper;
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/value/ChangeListener;, "Ljavafx/beans/value/ChangeListener<-Ljava/lang/Number;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/beans/property/ReadOnlyIntegerWrapper;->getReadOnlyProperty()Ljavafx/beans/property/ReadOnlyIntegerProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyIntegerProperty;->addListener(Ljavafx/beans/value/ChangeListener;)V

    .line 124
    return-void
.end method

.method protected fireValueChangedEvent()V
    .locals 2

    .prologue
    .line 141
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlyIntegerWrapper;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/ReadOnlyIntegerWrapper;->readOnlyProperty:Ljavafx/beans/property/ReadOnlyIntegerWrapper$ReadOnlyPropertyImpl;

    if-eqz v1, :cond_0

    .line 142
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/ReadOnlyIntegerWrapper;->readOnlyProperty:Ljavafx/beans/property/ReadOnlyIntegerWrapper$ReadOnlyPropertyImpl;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyIntegerWrapper$ReadOnlyPropertyImpl;->fireValueChangedEvent()V

    .line 144
    :cond_0
    return-void
.end method

.method public getReadOnlyProperty()Ljavafx/beans/property/ReadOnlyIntegerProperty;
    .locals 7

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlyIntegerWrapper;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/ReadOnlyIntegerWrapper;->readOnlyProperty:Ljavafx/beans/property/ReadOnlyIntegerWrapper$ReadOnlyPropertyImpl;

    if-nez v1, :cond_0

    .line 95
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/ReadOnlyIntegerWrapper$ReadOnlyPropertyImpl;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/ReadOnlyIntegerWrapper$ReadOnlyPropertyImpl;-><init>(Ljavafx/beans/property/ReadOnlyIntegerWrapper;Ljavafx/beans/property/ReadOnlyIntegerWrapper$1;)V

    iput-object v2, v1, Ljavafx/beans/property/ReadOnlyIntegerWrapper;->readOnlyProperty:Ljavafx/beans/property/ReadOnlyIntegerWrapper$ReadOnlyPropertyImpl;

    .line 97
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/ReadOnlyIntegerWrapper;->readOnlyProperty:Ljavafx/beans/property/ReadOnlyIntegerWrapper$ReadOnlyPropertyImpl;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/property/ReadOnlyIntegerWrapper;
    return-object v0
.end method

.method public removeListener(Ljavafx/beans/InvalidationListener;)V
    .locals 4

    .prologue
    .line 113
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlyIntegerWrapper;
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/property/ReadOnlyIntegerWrapper;->readOnlyProperty:Ljavafx/beans/property/ReadOnlyIntegerWrapper$ReadOnlyPropertyImpl;

    if-eqz v2, :cond_0

    .line 114
    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/property/ReadOnlyIntegerWrapper;->readOnlyProperty:Ljavafx/beans/property/ReadOnlyIntegerWrapper$ReadOnlyPropertyImpl;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyIntegerWrapper$ReadOnlyPropertyImpl;->removeListener(Ljavafx/beans/InvalidationListener;)V

    .line 116
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
            "Ljava/lang/Number;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 131
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlyIntegerWrapper;
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/value/ChangeListener;, "Ljavafx/beans/value/ChangeListener<-Ljava/lang/Number;>;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/property/ReadOnlyIntegerWrapper;->readOnlyProperty:Ljavafx/beans/property/ReadOnlyIntegerWrapper$ReadOnlyPropertyImpl;

    if-eqz v2, :cond_0

    .line 132
    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/property/ReadOnlyIntegerWrapper;->readOnlyProperty:Ljavafx/beans/property/ReadOnlyIntegerWrapper$ReadOnlyPropertyImpl;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyIntegerWrapper$ReadOnlyPropertyImpl;->removeListener(Ljavafx/beans/value/ChangeListener;)V

    .line 134
    :cond_0
    return-void
.end method

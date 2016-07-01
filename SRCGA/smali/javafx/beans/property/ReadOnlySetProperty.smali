.class public abstract Ljavafx/beans/property/ReadOnlySetProperty;
.super Ljavafx/beans/binding/SetExpression;
.source "ReadOnlySetProperty.java"

# interfaces
.implements Ljavafx/beans/property/ReadOnlyProperty;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljavafx/beans/binding/SetExpression",
        "<TE;>;",
        "Ljavafx/beans/property/ReadOnlyProperty",
        "<",
        "Ljavafx/collections/ObservableSet",
        "<TE;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlySetProperty;, "Ljavafx/beans/property/ReadOnlySetProperty<TE;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/beans/binding/SetExpression;-><init>()V

    .line 50
    return-void
.end method


# virtual methods
.method public bindContent(Ljavafx/collections/ObservableSet;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ObservableSet",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlySetProperty;, "Ljavafx/beans/property/ReadOnlySetProperty<TE;>;"
    move-object v1, p1

    .local v1, "set":Ljavafx/collections/ObservableSet;, "Ljavafx/collections/ObservableSet<TE;>;"
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Ljavafx/beans/binding/Bindings;->bindContent(Ljava/util/Set;Ljavafx/collections/ObservableSet;)V

    .line 93
    return-void
.end method

.method public bindContentBidirectional(Ljavafx/collections/ObservableSet;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ObservableSet",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlySetProperty;, "Ljavafx/beans/property/ReadOnlySetProperty<TE;>;"
    move-object v1, p1

    .local v1, "set":Ljavafx/collections/ObservableSet;, "Ljavafx/collections/ObservableSet<TE;>;"
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Ljavafx/beans/binding/Bindings;->bindContentBidirectional(Ljavafx/collections/ObservableSet;Ljavafx/collections/ObservableSet;)V

    .line 65
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    .line 109
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlySetProperty;, "Ljavafx/beans/property/ReadOnlySetProperty<TE;>;"
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v4, v1

    move-object v5, v0

    if-ne v4, v5, :cond_0

    .line 110
    const/4 v4, 0x1

    move v0, v4

    .line 122
    .end local v0    # "this":Ljavafx/beans/property/ReadOnlySetProperty;, "Ljavafx/beans/property/ReadOnlySetProperty<TE;>;"
    :goto_0
    return v0

    .line 112
    .restart local v0    # "this":Ljavafx/beans/property/ReadOnlySetProperty;, "Ljavafx/beans/property/ReadOnlySetProperty<TE;>;"
    :cond_0
    move-object v4, v1

    instance-of v4, v4, Ljava/util/Set;

    if-nez v4, :cond_1

    .line 113
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 114
    :cond_1
    move-object v4, v1

    check-cast v4, Ljava/util/Set;

    move-object v2, v4

    .line 115
    .local v2, "c":Ljava/util/Set;
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/beans/property/ReadOnlySetProperty;->size()I

    move-result v5

    if-eq v4, v5, :cond_2

    .line 116
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 118
    :cond_2
    move-object v4, v0

    move-object v5, v2

    :try_start_0
    invoke-virtual {v4, v5}, Ljavafx/beans/property/ReadOnlySetProperty;->containsAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    move v0, v4

    goto :goto_0

    .line 119
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 120
    .local v3, "unused":Ljava/lang/ClassCastException;
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 121
    .end local v3    # "unused":Ljava/lang/ClassCastException;
    :catch_1
    move-exception v4

    move-object v3, v4

    .line 122
    .local v3, "unused":Ljava/lang/NullPointerException;
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 132
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlySetProperty;, "Ljavafx/beans/property/ReadOnlySetProperty<TE;>;"
    const/4 v4, 0x0

    move v1, v4

    .line 133
    .local v1, "h":I
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/beans/property/ReadOnlySetProperty;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_0
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    .line 134
    .local v3, "e":Ljava/lang/Object;, "TE;"
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 135
    move v4, v1

    move-object v5, v3

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    add-int/2addr v4, v5

    move v1, v4

    .line 136
    :cond_0
    goto :goto_0

    .line 137
    .end local v3    # "e":Ljava/lang/Object;, "TE;"
    :cond_1
    move v4, v1

    move v0, v4

    .end local v0    # "this":Ljavafx/beans/property/ReadOnlySetProperty;, "Ljavafx/beans/property/ReadOnlySetProperty<TE;>;"
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 146
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlySetProperty;, "Ljavafx/beans/property/ReadOnlySetProperty<TE;>;"
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/beans/property/ReadOnlySetProperty;->getBean()Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    .line 147
    .local v1, "bean":Ljava/lang/Object;
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/beans/property/ReadOnlySetProperty;->getName()Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 148
    .local v2, "name":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string v6, "ReadOnlySetProperty ["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    .line 150
    .local v3, "result":Ljava/lang/StringBuilder;
    move-object v4, v1

    if-eqz v4, :cond_0

    .line 151
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

    .line 153
    :cond_0
    move-object v4, v2

    if-eqz v4, :cond_1

    move-object v4, v2

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 154
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

    .line 156
    :cond_1
    move-object v4, v3

    const-string v5, "value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/beans/property/ReadOnlySetProperty;->get()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 157
    move-object v4, v3

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Ljavafx/beans/property/ReadOnlySetProperty;, "Ljavafx/beans/property/ReadOnlySetProperty<TE;>;"
    return-object v0
.end method

.method public unbindContent(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 104
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlySetProperty;, "Ljavafx/beans/property/ReadOnlySetProperty<TE;>;"
    move-object v1, p1

    .local v1, "object":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Ljavafx/beans/binding/Bindings;->unbindContent(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 105
    return-void
.end method

.method public unbindContentBidirectional(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlySetProperty;, "Ljavafx/beans/property/ReadOnlySetProperty<TE;>;"
    move-object v1, p1

    .local v1, "object":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Ljavafx/beans/binding/Bindings;->unbindContentBidirectional(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 77
    return-void
.end method

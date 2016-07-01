.class public abstract Ljavafx/beans/property/ReadOnlyListProperty;
.super Ljavafx/beans/binding/ListExpression;
.source "ReadOnlyListProperty.java"

# interfaces
.implements Ljavafx/beans/property/ReadOnlyProperty;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljavafx/beans/binding/ListExpression",
        "<TE;>;",
        "Ljavafx/beans/property/ReadOnlyProperty",
        "<",
        "Ljavafx/collections/ObservableList",
        "<TE;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlyListProperty;, "Ljavafx/beans/property/ReadOnlyListProperty<TE;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/beans/binding/ListExpression;-><init>()V

    .line 52
    return-void
.end method


# virtual methods
.method public bindContent(Ljavafx/collections/ObservableList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ObservableList",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlyListProperty;, "Ljavafx/beans/property/ReadOnlyListProperty<TE;>;"
    move-object v1, p1

    .local v1, "list":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TE;>;"
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Ljavafx/beans/binding/Bindings;->bindContent(Ljava/util/List;Ljavafx/collections/ObservableList;)V

    .line 95
    return-void
.end method

.method public bindContentBidirectional(Ljavafx/collections/ObservableList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ObservableList",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlyListProperty;, "Ljavafx/beans/property/ReadOnlyListProperty<TE;>;"
    move-object v1, p1

    .local v1, "list":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TE;>;"
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Ljavafx/beans/binding/Bindings;->bindContentBidirectional(Ljavafx/collections/ObservableList;Ljavafx/collections/ObservableList;)V

    .line 67
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 9

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlyListProperty;, "Ljavafx/beans/property/ReadOnlyListProperty<TE;>;"
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v7, v0

    move-object v8, v1

    if-ne v7, v8, :cond_0

    .line 112
    const/4 v7, 0x1

    move v0, v7

    .line 131
    .end local v0    # "this":Ljavafx/beans/property/ReadOnlyListProperty;, "Ljavafx/beans/property/ReadOnlyListProperty<TE;>;"
    :goto_0
    return v0

    .line 114
    .restart local v0    # "this":Ljavafx/beans/property/ReadOnlyListProperty;, "Ljavafx/beans/property/ReadOnlyListProperty<TE;>;"
    :cond_0
    move-object v7, v1

    instance-of v7, v7, Ljava/util/List;

    if-nez v7, :cond_1

    .line 115
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0

    .line 117
    :cond_1
    move-object v7, v1

    check-cast v7, Ljava/util/List;

    move-object v2, v7

    .line 119
    .local v2, "list":Ljava/util/List;
    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/beans/property/ReadOnlyListProperty;->size()I

    move-result v7

    move-object v8, v2

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-eq v7, v8, :cond_2

    .line 120
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0

    .line 123
    :cond_2
    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/beans/property/ReadOnlyListProperty;->listIterator()Ljava/util/ListIterator;

    move-result-object v7

    move-object v3, v7

    .line 124
    .local v3, "e1":Ljava/util/ListIterator;, "Ljava/util/ListIterator<TE;>;"
    move-object v7, v2

    invoke-interface {v7}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v7

    move-object v4, v7

    .line 125
    .local v4, "e2":Ljava/util/ListIterator;
    :goto_1
    move-object v7, v3

    invoke-interface {v7}, Ljava/util/ListIterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    move-object v7, v4

    invoke-interface {v7}, Ljava/util/ListIterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 126
    move-object v7, v3

    invoke-interface {v7}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v5, v7

    .line 127
    .local v5, "o1":Ljava/lang/Object;, "TE;"
    move-object v7, v4

    invoke-interface {v7}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v6, v7

    .line 128
    .local v6, "o2":Ljava/lang/Object;
    move-object v7, v5

    if-nez v7, :cond_4

    move-object v7, v6

    if-nez v7, :cond_5

    .line 130
    :cond_3
    goto :goto_1

    .line 128
    :cond_4
    move-object v7, v5

    move-object v8, v6

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 129
    :cond_5
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0

    .line 131
    .end local v5    # "o1":Ljava/lang/Object;, "TE;"
    .end local v6    # "o2":Ljava/lang/Object;
    :cond_6
    const/4 v7, 0x1

    move v0, v7

    goto :goto_0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 136
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlyListProperty;, "Ljavafx/beans/property/ReadOnlyListProperty<TE;>;"
    const/4 v4, 0x1

    move v1, v4

    .line 137
    .local v1, "hashCode":I
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/beans/property/ReadOnlyListProperty;->iterator()Ljava/util/Iterator;

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

    .line 138
    .local v3, "e":Ljava/lang/Object;, "TE;"
    const/16 v4, 0x1f

    move v5, v1

    mul-int/2addr v4, v5

    move-object v5, v3

    if-nez v5, :cond_0

    const/4 v5, 0x0

    :goto_1
    add-int/2addr v4, v5

    move v1, v4

    goto :goto_0

    :cond_0
    move-object v5, v3

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    goto :goto_1

    .line 139
    .end local v3    # "e":Ljava/lang/Object;, "TE;"
    :cond_1
    move v4, v1

    move v0, v4

    .end local v0    # "this":Ljavafx/beans/property/ReadOnlyListProperty;, "Ljavafx/beans/property/ReadOnlyListProperty<TE;>;"
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 148
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlyListProperty;, "Ljavafx/beans/property/ReadOnlyListProperty<TE;>;"
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/beans/property/ReadOnlyListProperty;->getBean()Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    .line 149
    .local v1, "bean":Ljava/lang/Object;
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/beans/property/ReadOnlyListProperty;->getName()Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 150
    .local v2, "name":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string v6, "ReadOnlyListProperty ["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    .line 152
    .local v3, "result":Ljava/lang/StringBuilder;
    move-object v4, v1

    if-eqz v4, :cond_0

    .line 153
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

    .line 155
    :cond_0
    move-object v4, v2

    if-eqz v4, :cond_1

    move-object v4, v2

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 156
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

    .line 158
    :cond_1
    move-object v4, v3

    const-string v5, "value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/beans/property/ReadOnlyListProperty;->get()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 159
    move-object v4, v3

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Ljavafx/beans/property/ReadOnlyListProperty;, "Ljavafx/beans/property/ReadOnlyListProperty<TE;>;"
    return-object v0
.end method

.method public unbindContent(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 106
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlyListProperty;, "Ljavafx/beans/property/ReadOnlyListProperty<TE;>;"
    move-object v1, p1

    .local v1, "object":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Ljavafx/beans/binding/Bindings;->unbindContent(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 107
    return-void
.end method

.method public unbindContentBidirectional(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlyListProperty;, "Ljavafx/beans/property/ReadOnlyListProperty<TE;>;"
    move-object v1, p1

    .local v1, "object":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Ljavafx/beans/binding/Bindings;->unbindContentBidirectional(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 79
    return-void
.end method

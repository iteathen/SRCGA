.class public abstract Ljavafx/beans/binding/SetExpression;
.super Ljava/lang/Object;
.source "SetExpression.java"

# interfaces
.implements Ljavafx/beans/value/ObservableSetValue;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavafx/beans/binding/SetExpression$EmptyObservableSet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljavafx/beans/value/ObservableSetValue",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final EMPTY_SET:Ljavafx/collections/ObservableSet;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 61
    new-instance v0, Ljavafx/beans/binding/SetExpression$EmptyObservableSet;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljavafx/beans/binding/SetExpression$EmptyObservableSet;-><init>(Ljavafx/beans/binding/SetExpression$1;)V

    sput-object v0, Ljavafx/beans/binding/SetExpression;->EMPTY_SET:Ljavafx/collections/ObservableSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/SetExpression;, "Ljavafx/beans/binding/SetExpression<TE;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setExpression(Ljavafx/beans/value/ObservableSetValue;)Ljavafx/beans/binding/SetExpression;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavafx/beans/value/ObservableSetValue",
            "<TE;>;)",
            "Ljavafx/beans/binding/SetExpression",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 135
    move-object v0, p0

    .local v0, "value":Ljavafx/beans/value/ObservableSetValue;, "Ljavafx/beans/value/ObservableSetValue<TE;>;"
    move-object v1, v0

    if-nez v1, :cond_0

    .line 136
    new-instance v1, Ljava/lang/NullPointerException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Set must be specified."

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 138
    :cond_0
    move-object v1, v0

    instance-of v1, v1, Ljavafx/beans/binding/SetExpression;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljavafx/beans/binding/SetExpression;

    :goto_0
    move-object v0, v1

    .end local v0    # "value":Ljavafx/beans/value/ObservableSetValue;, "Ljavafx/beans/value/ObservableSetValue<TE;>;"
    return-object v0

    .restart local v0    # "value":Ljavafx/beans/value/ObservableSetValue;, "Ljavafx/beans/value/ObservableSetValue<TE;>;"
    :cond_1
    new-instance v1, Ljavafx/beans/binding/SetExpression$1;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Ljavafx/beans/binding/SetExpression$1;-><init>(Ljavafx/beans/value/ObservableSetValue;)V

    goto :goto_0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 276
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/SetExpression;, "Ljavafx/beans/binding/SetExpression<TE;>;"
    move-object v1, p1

    .local v1, "element":Ljava/lang/Object;, "TE;"
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/beans/binding/SetExpression;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/collections/ObservableSet;

    move-object v2, v3

    .line 277
    .local v2, "set":Ljavafx/collections/ObservableSet;, "Ljavafx/collections/ObservableSet<TE;>;"
    move-object v3, v2

    if-nez v3, :cond_0

    sget-object v3, Ljavafx/beans/binding/SetExpression;->EMPTY_SET:Ljavafx/collections/ObservableSet;

    move-object v4, v1

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableSet;->add(Ljava/lang/Object;)Z

    move-result v3

    :goto_0
    move v0, v3

    .end local v0    # "this":Ljavafx/beans/binding/SetExpression;, "Ljavafx/beans/binding/SetExpression<TE;>;"
    return v0

    .restart local v0    # "this":Ljavafx/beans/binding/SetExpression;, "Ljavafx/beans/binding/SetExpression<TE;>;"
    :cond_0
    move-object v3, v2

    move-object v4, v1

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableSet;->add(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 294
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/SetExpression;, "Ljavafx/beans/binding/SetExpression<TE;>;"
    move-object v1, p1

    .local v1, "elements":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/beans/binding/SetExpression;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/collections/ObservableSet;

    move-object v2, v3

    .line 295
    .local v2, "set":Ljavafx/collections/ObservableSet;, "Ljavafx/collections/ObservableSet<TE;>;"
    move-object v3, v2

    if-nez v3, :cond_0

    sget-object v3, Ljavafx/beans/binding/SetExpression;->EMPTY_SET:Ljavafx/collections/ObservableSet;

    move-object v4, v1

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableSet;->addAll(Ljava/util/Collection;)Z

    move-result v3

    :goto_0
    move v0, v3

    .end local v0    # "this":Ljavafx/beans/binding/SetExpression;, "Ljavafx/beans/binding/SetExpression<TE;>;"
    return v0

    .restart local v0    # "this":Ljavafx/beans/binding/SetExpression;, "Ljavafx/beans/binding/SetExpression<TE;>;"
    :cond_0
    move-object v3, v2

    move-object v4, v1

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableSet;->addAll(Ljava/util/Collection;)Z

    move-result v3

    goto :goto_0
.end method

.method public asString()Ljavafx/beans/binding/StringBinding;
    .locals 2

    .prologue
    .line 235
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/SetExpression;, "Ljavafx/beans/binding/SetExpression<TE;>;"
    move-object v1, v0

    invoke-static {v1}, Lcom/sun/javafx/binding/StringFormatter;->convert(Ljavafx/beans/value/ObservableValue;)Ljavafx/beans/binding/StringExpression;

    move-result-object v1

    check-cast v1, Ljavafx/beans/binding/StringBinding;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/binding/SetExpression;, "Ljavafx/beans/binding/SetExpression<TE;>;"
    return-object v0
.end method

.method public clear()V
    .locals 3

    .prologue
    .line 312
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/SetExpression;, "Ljavafx/beans/binding/SetExpression<TE;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/beans/binding/SetExpression;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavafx/collections/ObservableSet;

    move-object v1, v2

    .line 313
    .local v1, "set":Ljavafx/collections/ObservableSet;, "Ljavafx/collections/ObservableSet<TE;>;"
    move-object v2, v1

    if-nez v2, :cond_0

    .line 314
    sget-object v2, Ljavafx/beans/binding/SetExpression;->EMPTY_SET:Ljavafx/collections/ObservableSet;

    invoke-interface {v2}, Ljavafx/collections/ObservableSet;->clear()V

    .line 318
    :goto_0
    return-void

    .line 316
    :cond_0
    move-object v2, v1

    invoke-interface {v2}, Ljavafx/collections/ObservableSet;->clear()V

    goto :goto_0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 252
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/SetExpression;, "Ljavafx/beans/binding/SetExpression<TE;>;"
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/beans/binding/SetExpression;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/collections/ObservableSet;

    move-object v2, v3

    .line 253
    .local v2, "set":Ljavafx/collections/ObservableSet;, "Ljavafx/collections/ObservableSet<TE;>;"
    move-object v3, v2

    if-nez v3, :cond_0

    sget-object v3, Ljavafx/beans/binding/SetExpression;->EMPTY_SET:Ljavafx/collections/ObservableSet;

    move-object v4, v1

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    :goto_0
    move v0, v3

    .end local v0    # "this":Ljavafx/beans/binding/SetExpression;, "Ljavafx/beans/binding/SetExpression<TE;>;"
    return v0

    .restart local v0    # "this":Ljavafx/beans/binding/SetExpression;, "Ljavafx/beans/binding/SetExpression<TE;>;"
    :cond_0
    move-object v3, v2

    move-object v4, v1

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 288
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/SetExpression;, "Ljavafx/beans/binding/SetExpression<TE;>;"
    move-object v1, p1

    .local v1, "objects":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/beans/binding/SetExpression;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/collections/ObservableSet;

    move-object v2, v3

    .line 289
    .local v2, "set":Ljavafx/collections/ObservableSet;, "Ljavafx/collections/ObservableSet<TE;>;"
    move-object v3, v2

    if-nez v3, :cond_0

    sget-object v3, Ljavafx/beans/binding/SetExpression;->EMPTY_SET:Ljavafx/collections/ObservableSet;

    move-object v4, v1

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    :goto_0
    move v0, v3

    .end local v0    # "this":Ljavafx/beans/binding/SetExpression;, "Ljavafx/beans/binding/SetExpression<TE;>;"
    return v0

    .restart local v0    # "this":Ljavafx/beans/binding/SetExpression;, "Ljavafx/beans/binding/SetExpression<TE;>;"
    :cond_0
    move-object v3, v2

    move-object v4, v1

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableSet;->containsAll(Ljava/util/Collection;)Z

    move-result v3

    goto :goto_0
.end method

.method public abstract emptyProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;
.end method

.method public getSize()I
    .locals 2

    .prologue
    .line 166
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/SetExpression;, "Ljavafx/beans/binding/SetExpression<TE;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/beans/binding/SetExpression;->size()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/beans/binding/SetExpression;, "Ljavafx/beans/binding/SetExpression<TE;>;"
    return v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/SetExpression;, "Ljavafx/beans/binding/SetExpression<TE;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/beans/binding/SetExpression;->getValue()Ljavafx/collections/ObservableSet;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/binding/SetExpression;, "Ljavafx/beans/binding/SetExpression<TE;>;"
    return-object v0
.end method

.method public getValue()Ljavafx/collections/ObservableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 116
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/SetExpression;, "Ljavafx/beans/binding/SetExpression<TE;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/beans/binding/SetExpression;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/collections/ObservableSet;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/binding/SetExpression;, "Ljavafx/beans/binding/SetExpression<TE;>;"
    return-object v0
.end method

.method public isEmpty()Z
    .locals 3

    .prologue
    .line 246
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/SetExpression;, "Ljavafx/beans/binding/SetExpression<TE;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/beans/binding/SetExpression;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavafx/collections/ObservableSet;

    move-object v1, v2

    .line 247
    .local v1, "set":Ljavafx/collections/ObservableSet;, "Ljavafx/collections/ObservableSet<TE;>;"
    move-object v2, v1

    if-nez v2, :cond_0

    sget-object v2, Ljavafx/beans/binding/SetExpression;->EMPTY_SET:Ljavafx/collections/ObservableSet;

    invoke-interface {v2}, Ljavafx/collections/ObservableSet;->isEmpty()Z

    move-result v2

    :goto_0
    move v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/SetExpression;, "Ljavafx/beans/binding/SetExpression<TE;>;"
    return v0

    .restart local v0    # "this":Ljavafx/beans/binding/SetExpression;, "Ljavafx/beans/binding/SetExpression<TE;>;"
    :cond_0
    move-object v2, v1

    invoke-interface {v2}, Ljavafx/collections/ObservableSet;->isEmpty()Z

    move-result v2

    goto :goto_0
.end method

.method public isEqualTo(Ljavafx/collections/ObservableSet;)Ljavafx/beans/binding/BooleanBinding;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ObservableSet",
            "<*>;)",
            "Ljavafx/beans/binding/BooleanBinding;"
        }
    .end annotation

    .prologue
    .line 191
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/SetExpression;, "Ljavafx/beans/binding/SetExpression<TE;>;"
    move-object v1, p1

    .local v1, "other":Ljavafx/collections/ObservableSet;, "Ljavafx/collections/ObservableSet<*>;"
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Ljavafx/beans/binding/Bindings;->equal(Ljavafx/beans/value/ObservableObjectValue;Ljava/lang/Object;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/SetExpression;, "Ljavafx/beans/binding/SetExpression<TE;>;"
    return-object v0
.end method

.method public isNotEqualTo(Ljavafx/collections/ObservableSet;)Ljavafx/beans/binding/BooleanBinding;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ObservableSet",
            "<*>;)",
            "Ljavafx/beans/binding/BooleanBinding;"
        }
    .end annotation

    .prologue
    .line 205
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/SetExpression;, "Ljavafx/beans/binding/SetExpression<TE;>;"
    move-object v1, p1

    .local v1, "other":Ljavafx/collections/ObservableSet;, "Ljavafx/collections/ObservableSet<*>;"
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Ljavafx/beans/binding/Bindings;->notEqual(Ljavafx/beans/value/ObservableObjectValue;Ljava/lang/Object;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/SetExpression;, "Ljavafx/beans/binding/SetExpression<TE;>;"
    return-object v0
.end method

.method public isNotNull()Ljavafx/beans/binding/BooleanBinding;
    .locals 2

    .prologue
    .line 223
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/SetExpression;, "Ljavafx/beans/binding/SetExpression<TE;>;"
    move-object v1, v0

    invoke-static {v1}, Ljavafx/beans/binding/Bindings;->isNotNull(Ljavafx/beans/value/ObservableObjectValue;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/binding/SetExpression;, "Ljavafx/beans/binding/SetExpression<TE;>;"
    return-object v0
.end method

.method public isNull()Ljavafx/beans/binding/BooleanBinding;
    .locals 2

    .prologue
    .line 214
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/SetExpression;, "Ljavafx/beans/binding/SetExpression<TE;>;"
    move-object v1, v0

    invoke-static {v1}, Ljavafx/beans/binding/Bindings;->isNull(Ljavafx/beans/value/ObservableObjectValue;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/binding/SetExpression;, "Ljavafx/beans/binding/SetExpression<TE;>;"
    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 258
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/SetExpression;, "Ljavafx/beans/binding/SetExpression<TE;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/beans/binding/SetExpression;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavafx/collections/ObservableSet;

    move-object v1, v2

    .line 259
    .local v1, "set":Ljavafx/collections/ObservableSet;, "Ljavafx/collections/ObservableSet<TE;>;"
    move-object v2, v1

    if-nez v2, :cond_0

    sget-object v2, Ljavafx/beans/binding/SetExpression;->EMPTY_SET:Ljavafx/collections/ObservableSet;

    invoke-interface {v2}, Ljavafx/collections/ObservableSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/SetExpression;, "Ljavafx/beans/binding/SetExpression<TE;>;"
    return-object v0

    .restart local v0    # "this":Ljavafx/beans/binding/SetExpression;, "Ljavafx/beans/binding/SetExpression<TE;>;"
    :cond_0
    move-object v2, v1

    invoke-interface {v2}, Ljavafx/collections/ObservableSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 282
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/SetExpression;, "Ljavafx/beans/binding/SetExpression<TE;>;"
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/beans/binding/SetExpression;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/collections/ObservableSet;

    move-object v2, v3

    .line 283
    .local v2, "set":Ljavafx/collections/ObservableSet;, "Ljavafx/collections/ObservableSet<TE;>;"
    move-object v3, v2

    if-nez v3, :cond_0

    sget-object v3, Ljavafx/beans/binding/SetExpression;->EMPTY_SET:Ljavafx/collections/ObservableSet;

    move-object v4, v1

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableSet;->remove(Ljava/lang/Object;)Z

    move-result v3

    :goto_0
    move v0, v3

    .end local v0    # "this":Ljavafx/beans/binding/SetExpression;, "Ljavafx/beans/binding/SetExpression<TE;>;"
    return v0

    .restart local v0    # "this":Ljavafx/beans/binding/SetExpression;, "Ljavafx/beans/binding/SetExpression<TE;>;"
    :cond_0
    move-object v3, v2

    move-object v4, v1

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableSet;->remove(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 300
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/SetExpression;, "Ljavafx/beans/binding/SetExpression<TE;>;"
    move-object v1, p1

    .local v1, "objects":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/beans/binding/SetExpression;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/collections/ObservableSet;

    move-object v2, v3

    .line 301
    .local v2, "set":Ljavafx/collections/ObservableSet;, "Ljavafx/collections/ObservableSet<TE;>;"
    move-object v3, v2

    if-nez v3, :cond_0

    sget-object v3, Ljavafx/beans/binding/SetExpression;->EMPTY_SET:Ljavafx/collections/ObservableSet;

    move-object v4, v1

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableSet;->removeAll(Ljava/util/Collection;)Z

    move-result v3

    :goto_0
    move v0, v3

    .end local v0    # "this":Ljavafx/beans/binding/SetExpression;, "Ljavafx/beans/binding/SetExpression<TE;>;"
    return v0

    .restart local v0    # "this":Ljavafx/beans/binding/SetExpression;, "Ljavafx/beans/binding/SetExpression<TE;>;"
    :cond_0
    move-object v3, v2

    move-object v4, v1

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableSet;->removeAll(Ljava/util/Collection;)Z

    move-result v3

    goto :goto_0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 306
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/SetExpression;, "Ljavafx/beans/binding/SetExpression<TE;>;"
    move-object v1, p1

    .local v1, "objects":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/beans/binding/SetExpression;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/collections/ObservableSet;

    move-object v2, v3

    .line 307
    .local v2, "set":Ljavafx/collections/ObservableSet;, "Ljavafx/collections/ObservableSet<TE;>;"
    move-object v3, v2

    if-nez v3, :cond_0

    sget-object v3, Ljavafx/beans/binding/SetExpression;->EMPTY_SET:Ljavafx/collections/ObservableSet;

    move-object v4, v1

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableSet;->retainAll(Ljava/util/Collection;)Z

    move-result v3

    :goto_0
    move v0, v3

    .end local v0    # "this":Ljavafx/beans/binding/SetExpression;, "Ljavafx/beans/binding/SetExpression<TE;>;"
    return v0

    .restart local v0    # "this":Ljavafx/beans/binding/SetExpression;, "Ljavafx/beans/binding/SetExpression<TE;>;"
    :cond_0
    move-object v3, v2

    move-object v4, v1

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableSet;->retainAll(Ljava/util/Collection;)Z

    move-result v3

    goto :goto_0
.end method

.method public size()I
    .locals 3

    .prologue
    .line 240
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/SetExpression;, "Ljavafx/beans/binding/SetExpression<TE;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/beans/binding/SetExpression;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavafx/collections/ObservableSet;

    move-object v1, v2

    .line 241
    .local v1, "set":Ljavafx/collections/ObservableSet;, "Ljavafx/collections/ObservableSet<TE;>;"
    move-object v2, v1

    if-nez v2, :cond_0

    sget-object v2, Ljavafx/beans/binding/SetExpression;->EMPTY_SET:Ljavafx/collections/ObservableSet;

    invoke-interface {v2}, Ljavafx/collections/ObservableSet;->size()I

    move-result v2

    :goto_0
    move v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/SetExpression;, "Ljavafx/beans/binding/SetExpression<TE;>;"
    return v0

    .restart local v0    # "this":Ljavafx/beans/binding/SetExpression;, "Ljavafx/beans/binding/SetExpression<TE;>;"
    :cond_0
    move-object v2, v1

    invoke-interface {v2}, Ljavafx/collections/ObservableSet;->size()I

    move-result v2

    goto :goto_0
.end method

.method public abstract sizeProperty()Ljavafx/beans/property/ReadOnlyIntegerProperty;
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 3

    .prologue
    .line 264
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/SetExpression;, "Ljavafx/beans/binding/SetExpression<TE;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/beans/binding/SetExpression;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavafx/collections/ObservableSet;

    move-object v1, v2

    .line 265
    .local v1, "set":Ljavafx/collections/ObservableSet;, "Ljavafx/collections/ObservableSet<TE;>;"
    move-object v2, v1

    if-nez v2, :cond_0

    sget-object v2, Ljavafx/beans/binding/SetExpression;->EMPTY_SET:Ljavafx/collections/ObservableSet;

    invoke-interface {v2}, Ljavafx/collections/ObservableSet;->toArray()[Ljava/lang/Object;

    move-result-object v2

    :goto_0
    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/SetExpression;, "Ljavafx/beans/binding/SetExpression<TE;>;"
    return-object v0

    .restart local v0    # "this":Ljavafx/beans/binding/SetExpression;, "Ljavafx/beans/binding/SetExpression<TE;>;"
    :cond_0
    move-object v2, v1

    invoke-interface {v2}, Ljavafx/collections/ObservableSet;->toArray()[Ljava/lang/Object;

    move-result-object v2

    goto :goto_0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 270
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/SetExpression;, "Ljavafx/beans/binding/SetExpression<TE;>;"
    move-object v1, p1

    .local v1, "array":[Ljava/lang/Object;, "[TT;"
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/beans/binding/SetExpression;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/collections/ObservableSet;

    move-object v2, v3

    .line 271
    .local v2, "set":Ljavafx/collections/ObservableSet;, "Ljavafx/collections/ObservableSet<TE;>;"
    move-object v3, v2

    if-nez v3, :cond_0

    sget-object v3, Ljavafx/beans/binding/SetExpression;->EMPTY_SET:Ljavafx/collections/ObservableSet;

    move-object v4, v1

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    :goto_0
    move-object v0, v3

    .end local v0    # "this":Ljavafx/beans/binding/SetExpression;, "Ljavafx/beans/binding/SetExpression<TE;>;"
    return-object v0

    .restart local v0    # "this":Ljavafx/beans/binding/SetExpression;, "Ljavafx/beans/binding/SetExpression<TE;>;"
    :cond_0
    move-object v3, v2

    move-object v4, v1

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    goto :goto_0
.end method

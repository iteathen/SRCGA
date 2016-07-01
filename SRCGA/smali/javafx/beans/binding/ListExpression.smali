.class public abstract Ljavafx/beans/binding/ListExpression;
.super Ljava/lang/Object;
.source "ListExpression.java"

# interfaces
.implements Ljavafx/beans/value/ObservableListValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljavafx/beans/value/ObservableListValue",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final EMPTY_LIST:Ljavafx/collections/ObservableList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    invoke-static {}, Ljavafx/collections/FXCollections;->emptyObservableList()Ljavafx/collections/ObservableList;

    move-result-object v0

    sput-object v0, Ljavafx/beans/binding/ListExpression;->EMPTY_LIST:Ljavafx/collections/ObservableList;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/ListExpression;, "Ljavafx/beans/binding/ListExpression<TE;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static listExpression(Ljavafx/beans/value/ObservableListValue;)Ljavafx/beans/binding/ListExpression;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavafx/beans/value/ObservableListValue",
            "<TE;>;)",
            "Ljavafx/beans/binding/ListExpression",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "value":Ljavafx/beans/value/ObservableListValue;, "Ljavafx/beans/value/ObservableListValue<TE;>;"
    move-object v1, v0

    if-nez v1, :cond_0

    .line 83
    new-instance v1, Ljava/lang/NullPointerException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "List must be specified."

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 85
    :cond_0
    move-object v1, v0

    instance-of v1, v1, Ljavafx/beans/binding/ListExpression;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljavafx/beans/binding/ListExpression;

    :goto_0
    move-object v0, v1

    .end local v0    # "value":Ljavafx/beans/value/ObservableListValue;, "Ljavafx/beans/value/ObservableListValue<TE;>;"
    return-object v0

    .restart local v0    # "value":Ljavafx/beans/value/ObservableListValue;, "Ljavafx/beans/value/ObservableListValue<TE;>;"
    :cond_1
    new-instance v1, Ljavafx/beans/binding/ListExpression$1;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Ljavafx/beans/binding/ListExpression$1;-><init>(Ljavafx/beans/value/ObservableListValue;)V

    goto :goto_0
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .line 311
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/ListExpression;, "Ljavafx/beans/binding/ListExpression<TE;>;"
    move v1, p1

    .local v1, "i":I
    move-object v2, p2

    .local v2, "element":Ljava/lang/Object;, "TE;"
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/beans/binding/ListExpression;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/collections/ObservableList;

    move-object v3, v4

    .line 312
    .local v3, "list":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TE;>;"
    move-object v4, v3

    if-nez v4, :cond_0

    .line 313
    sget-object v4, Ljavafx/beans/binding/ListExpression;->EMPTY_LIST:Ljavafx/collections/ObservableList;

    move v5, v1

    move-object v6, v2

    invoke-interface {v4, v5, v6}, Ljavafx/collections/ObservableList;->add(ILjava/lang/Object;)V

    .line 317
    :goto_0
    return-void

    .line 315
    :cond_0
    move-object v4, v3

    move v5, v1

    move-object v6, v2

    invoke-interface {v4, v5, v6}, Ljavafx/collections/ObservableList;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 247
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/ListExpression;, "Ljavafx/beans/binding/ListExpression<TE;>;"
    move-object v1, p1

    .local v1, "element":Ljava/lang/Object;, "TE;"
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/beans/binding/ListExpression;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/collections/ObservableList;

    move-object v2, v3

    .line 248
    .local v2, "list":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TE;>;"
    move-object v3, v2

    if-nez v3, :cond_0

    sget-object v3, Ljavafx/beans/binding/ListExpression;->EMPTY_LIST:Ljavafx/collections/ObservableList;

    move-object v4, v1

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v3

    :goto_0
    move v0, v3

    .end local v0    # "this":Ljavafx/beans/binding/ListExpression;, "Ljavafx/beans/binding/ListExpression<TE;>;"
    return v0

    .restart local v0    # "this":Ljavafx/beans/binding/ListExpression;, "Ljavafx/beans/binding/ListExpression<TE;>;"
    :cond_0
    move-object v3, v2

    move-object v4, v1

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 271
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/ListExpression;, "Ljavafx/beans/binding/ListExpression<TE;>;"
    move v1, p1

    .local v1, "i":I
    move-object v2, p2

    .local v2, "elements":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/beans/binding/ListExpression;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/collections/ObservableList;

    move-object v3, v4

    .line 272
    .local v3, "list":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TE;>;"
    move-object v4, v3

    if-nez v4, :cond_0

    sget-object v4, Ljavafx/beans/binding/ListExpression;->EMPTY_LIST:Ljavafx/collections/ObservableList;

    move v5, v1

    move-object v6, v2

    invoke-interface {v4, v5, v6}, Ljavafx/collections/ObservableList;->addAll(ILjava/util/Collection;)Z

    move-result v4

    :goto_0
    move v0, v4

    .end local v0    # "this":Ljavafx/beans/binding/ListExpression;, "Ljavafx/beans/binding/ListExpression<TE;>;"
    return v0

    .restart local v0    # "this":Ljavafx/beans/binding/ListExpression;, "Ljavafx/beans/binding/ListExpression<TE;>;"
    :cond_0
    move-object v4, v3

    move v5, v1

    move-object v6, v2

    invoke-interface {v4, v5, v6}, Ljavafx/collections/ObservableList;->addAll(ILjava/util/Collection;)Z

    move-result v4

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
    .line 265
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/ListExpression;, "Ljavafx/beans/binding/ListExpression<TE;>;"
    move-object v1, p1

    .local v1, "elements":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/beans/binding/ListExpression;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/collections/ObservableList;

    move-object v2, v3

    .line 266
    .local v2, "list":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TE;>;"
    move-object v3, v2

    if-nez v3, :cond_0

    sget-object v3, Ljavafx/beans/binding/ListExpression;->EMPTY_LIST:Ljavafx/collections/ObservableList;

    move-object v4, v1

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->addAll(Ljava/util/Collection;)Z

    move-result v3

    :goto_0
    move v0, v3

    .end local v0    # "this":Ljavafx/beans/binding/ListExpression;, "Ljavafx/beans/binding/ListExpression<TE;>;"
    return v0

    .restart local v0    # "this":Ljavafx/beans/binding/ListExpression;, "Ljavafx/beans/binding/ListExpression<TE;>;"
    :cond_0
    move-object v3, v2

    move-object v4, v1

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->addAll(Ljava/util/Collection;)Z

    move-result v3

    goto :goto_0
.end method

.method public varargs addAll([Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)Z"
        }
    .end annotation

    .prologue
    .line 357
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/ListExpression;, "Ljavafx/beans/binding/ListExpression<TE;>;"
    move-object v1, p1

    .local v1, "elements":[Ljava/lang/Object;, "[TE;"
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/beans/binding/ListExpression;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/collections/ObservableList;

    move-object v2, v3

    .line 358
    .local v2, "list":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TE;>;"
    move-object v3, v2

    if-nez v3, :cond_0

    sget-object v3, Ljavafx/beans/binding/ListExpression;->EMPTY_LIST:Ljavafx/collections/ObservableList;

    move-object v4, v1

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->addAll([Ljava/lang/Object;)Z

    move-result v3

    :goto_0
    move v0, v3

    .end local v0    # "this":Ljavafx/beans/binding/ListExpression;, "Ljavafx/beans/binding/ListExpression<TE;>;"
    return v0

    .restart local v0    # "this":Ljavafx/beans/binding/ListExpression;, "Ljavafx/beans/binding/ListExpression<TE;>;"
    :cond_0
    move-object v3, v2

    move-object v4, v1

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->addAll([Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0
.end method

.method public asString()Ljavafx/beans/binding/StringBinding;
    .locals 2

    .prologue
    .line 206
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/ListExpression;, "Ljavafx/beans/binding/ListExpression<TE;>;"
    move-object v1, v0

    invoke-static {v1}, Lcom/sun/javafx/binding/StringFormatter;->convert(Ljavafx/beans/value/ObservableValue;)Ljavafx/beans/binding/StringExpression;

    move-result-object v1

    check-cast v1, Ljavafx/beans/binding/StringBinding;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/binding/ListExpression;, "Ljavafx/beans/binding/ListExpression<TE;>;"
    return-object v0
.end method

.method public clear()V
    .locals 3

    .prologue
    .line 289
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/ListExpression;, "Ljavafx/beans/binding/ListExpression<TE;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/beans/binding/ListExpression;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavafx/collections/ObservableList;

    move-object v1, v2

    .line 290
    .local v1, "list":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TE;>;"
    move-object v2, v1

    if-nez v2, :cond_0

    .line 291
    sget-object v2, Ljavafx/beans/binding/ListExpression;->EMPTY_LIST:Ljavafx/collections/ObservableList;

    invoke-interface {v2}, Ljavafx/collections/ObservableList;->clear()V

    .line 295
    :goto_0
    return-void

    .line 293
    :cond_0
    move-object v2, v1

    invoke-interface {v2}, Ljavafx/collections/ObservableList;->clear()V

    goto :goto_0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 223
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/ListExpression;, "Ljavafx/beans/binding/ListExpression<TE;>;"
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/beans/binding/ListExpression;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/collections/ObservableList;

    move-object v2, v3

    .line 224
    .local v2, "list":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TE;>;"
    move-object v3, v2

    if-nez v3, :cond_0

    sget-object v3, Ljavafx/beans/binding/ListExpression;->EMPTY_LIST:Ljavafx/collections/ObservableList;

    move-object v4, v1

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->contains(Ljava/lang/Object;)Z

    move-result v3

    :goto_0
    move v0, v3

    .end local v0    # "this":Ljavafx/beans/binding/ListExpression;, "Ljavafx/beans/binding/ListExpression<TE;>;"
    return v0

    .restart local v0    # "this":Ljavafx/beans/binding/ListExpression;, "Ljavafx/beans/binding/ListExpression<TE;>;"
    :cond_0
    move-object v3, v2

    move-object v4, v1

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->contains(Ljava/lang/Object;)Z

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
    .line 259
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/ListExpression;, "Ljavafx/beans/binding/ListExpression<TE;>;"
    move-object v1, p1

    .local v1, "objects":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/beans/binding/ListExpression;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/collections/ObservableList;

    move-object v2, v3

    .line 260
    .local v2, "list":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TE;>;"
    move-object v3, v2

    if-nez v3, :cond_0

    sget-object v3, Ljavafx/beans/binding/ListExpression;->EMPTY_LIST:Ljavafx/collections/ObservableList;

    move-object v4, v1

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->contains(Ljava/lang/Object;)Z

    move-result v3

    :goto_0
    move v0, v3

    .end local v0    # "this":Ljavafx/beans/binding/ListExpression;, "Ljavafx/beans/binding/ListExpression<TE;>;"
    return v0

    .restart local v0    # "this":Ljavafx/beans/binding/ListExpression;, "Ljavafx/beans/binding/ListExpression<TE;>;"
    :cond_0
    move-object v3, v2

    move-object v4, v1

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->containsAll(Ljava/util/Collection;)Z

    move-result v3

    goto :goto_0
.end method

.method public abstract emptyProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;
.end method

.method public get(I)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 299
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/ListExpression;, "Ljavafx/beans/binding/ListExpression<TE;>;"
    move v1, p1

    .local v1, "i":I
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/beans/binding/ListExpression;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/collections/ObservableList;

    move-object v2, v3

    .line 300
    .local v2, "list":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TE;>;"
    move-object v3, v2

    if-nez v3, :cond_0

    sget-object v3, Ljavafx/beans/binding/ListExpression;->EMPTY_LIST:Ljavafx/collections/ObservableList;

    move v4, v1

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v3

    :goto_0
    move-object v0, v3

    .end local v0    # "this":Ljavafx/beans/binding/ListExpression;, "Ljavafx/beans/binding/ListExpression<TE;>;"
    return-object v0

    .restart local v0    # "this":Ljavafx/beans/binding/ListExpression;, "Ljavafx/beans/binding/ListExpression<TE;>;"
    :cond_0
    move-object v3, v2

    move v4, v1

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0
.end method

.method public getSize()I
    .locals 2

    .prologue
    .line 113
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/ListExpression;, "Ljavafx/beans/binding/ListExpression<TE;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/beans/binding/ListExpression;->size()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/beans/binding/ListExpression;, "Ljavafx/beans/binding/ListExpression<TE;>;"
    return v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/ListExpression;, "Ljavafx/beans/binding/ListExpression<TE;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/beans/binding/ListExpression;->getValue()Ljavafx/collections/ObservableList;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/binding/ListExpression;, "Ljavafx/beans/binding/ListExpression<TE;>;"
    return-object v0
.end method

.method public getValue()Ljavafx/collections/ObservableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/ListExpression;, "Ljavafx/beans/binding/ListExpression<TE;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/beans/binding/ListExpression;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/collections/ObservableList;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/binding/ListExpression;, "Ljavafx/beans/binding/ListExpression<TE;>;"
    return-object v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 5

    .prologue
    .line 327
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/ListExpression;, "Ljavafx/beans/binding/ListExpression<TE;>;"
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/beans/binding/ListExpression;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/collections/ObservableList;

    move-object v2, v3

    .line 328
    .local v2, "list":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TE;>;"
    move-object v3, v2

    if-nez v3, :cond_0

    sget-object v3, Ljavafx/beans/binding/ListExpression;->EMPTY_LIST:Ljavafx/collections/ObservableList;

    move-object v4, v1

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    :goto_0
    move v0, v3

    .end local v0    # "this":Ljavafx/beans/binding/ListExpression;, "Ljavafx/beans/binding/ListExpression<TE;>;"
    return v0

    .restart local v0    # "this":Ljavafx/beans/binding/ListExpression;, "Ljavafx/beans/binding/ListExpression<TE;>;"
    :cond_0
    move-object v3, v2

    move-object v4, v1

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 3

    .prologue
    .line 217
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/ListExpression;, "Ljavafx/beans/binding/ListExpression<TE;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/beans/binding/ListExpression;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavafx/collections/ObservableList;

    move-object v1, v2

    .line 218
    .local v1, "list":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TE;>;"
    move-object v2, v1

    if-nez v2, :cond_0

    sget-object v2, Ljavafx/beans/binding/ListExpression;->EMPTY_LIST:Ljavafx/collections/ObservableList;

    invoke-interface {v2}, Ljavafx/collections/ObservableList;->isEmpty()Z

    move-result v2

    :goto_0
    move v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/ListExpression;, "Ljavafx/beans/binding/ListExpression<TE;>;"
    return v0

    .restart local v0    # "this":Ljavafx/beans/binding/ListExpression;, "Ljavafx/beans/binding/ListExpression<TE;>;"
    :cond_0
    move-object v2, v1

    invoke-interface {v2}, Ljavafx/collections/ObservableList;->isEmpty()Z

    move-result v2

    goto :goto_0
.end method

.method public isEqualTo(Ljavafx/collections/ObservableList;)Ljavafx/beans/binding/BooleanBinding;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ObservableList",
            "<*>;)",
            "Ljavafx/beans/binding/BooleanBinding;"
        }
    .end annotation

    .prologue
    .line 162
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/ListExpression;, "Ljavafx/beans/binding/ListExpression<TE;>;"
    move-object v1, p1

    .local v1, "other":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<*>;"
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Ljavafx/beans/binding/Bindings;->equal(Ljavafx/beans/value/ObservableObjectValue;Ljava/lang/Object;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/ListExpression;, "Ljavafx/beans/binding/ListExpression<TE;>;"
    return-object v0
.end method

.method public isNotEqualTo(Ljavafx/collections/ObservableList;)Ljavafx/beans/binding/BooleanBinding;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ObservableList",
            "<*>;)",
            "Ljavafx/beans/binding/BooleanBinding;"
        }
    .end annotation

    .prologue
    .line 176
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/ListExpression;, "Ljavafx/beans/binding/ListExpression<TE;>;"
    move-object v1, p1

    .local v1, "other":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<*>;"
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Ljavafx/beans/binding/Bindings;->notEqual(Ljavafx/beans/value/ObservableObjectValue;Ljava/lang/Object;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/ListExpression;, "Ljavafx/beans/binding/ListExpression<TE;>;"
    return-object v0
.end method

.method public isNotNull()Ljavafx/beans/binding/BooleanBinding;
    .locals 2

    .prologue
    .line 194
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/ListExpression;, "Ljavafx/beans/binding/ListExpression<TE;>;"
    move-object v1, v0

    invoke-static {v1}, Ljavafx/beans/binding/Bindings;->isNotNull(Ljavafx/beans/value/ObservableObjectValue;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/binding/ListExpression;, "Ljavafx/beans/binding/ListExpression<TE;>;"
    return-object v0
.end method

.method public isNull()Ljavafx/beans/binding/BooleanBinding;
    .locals 2

    .prologue
    .line 185
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/ListExpression;, "Ljavafx/beans/binding/ListExpression<TE;>;"
    move-object v1, v0

    invoke-static {v1}, Ljavafx/beans/binding/Bindings;->isNull(Ljavafx/beans/value/ObservableObjectValue;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/binding/ListExpression;, "Ljavafx/beans/binding/ListExpression<TE;>;"
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
    .line 229
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/ListExpression;, "Ljavafx/beans/binding/ListExpression<TE;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/beans/binding/ListExpression;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavafx/collections/ObservableList;

    move-object v1, v2

    .line 230
    .local v1, "list":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TE;>;"
    move-object v2, v1

    if-nez v2, :cond_0

    sget-object v2, Ljavafx/beans/binding/ListExpression;->EMPTY_LIST:Ljavafx/collections/ObservableList;

    invoke-interface {v2}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/ListExpression;, "Ljavafx/beans/binding/ListExpression<TE;>;"
    return-object v0

    .restart local v0    # "this":Ljavafx/beans/binding/ListExpression;, "Ljavafx/beans/binding/ListExpression<TE;>;"
    :cond_0
    move-object v2, v1

    invoke-interface {v2}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    goto :goto_0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 5

    .prologue
    .line 333
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/ListExpression;, "Ljavafx/beans/binding/ListExpression<TE;>;"
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/beans/binding/ListExpression;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/collections/ObservableList;

    move-object v2, v3

    .line 334
    .local v2, "list":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TE;>;"
    move-object v3, v2

    if-nez v3, :cond_0

    sget-object v3, Ljavafx/beans/binding/ListExpression;->EMPTY_LIST:Ljavafx/collections/ObservableList;

    move-object v4, v1

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v3

    :goto_0
    move v0, v3

    .end local v0    # "this":Ljavafx/beans/binding/ListExpression;, "Ljavafx/beans/binding/ListExpression<TE;>;"
    return v0

    .restart local v0    # "this":Ljavafx/beans/binding/ListExpression;, "Ljavafx/beans/binding/ListExpression<TE;>;"
    :cond_0
    move-object v3, v2

    move-object v4, v1

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v3

    goto :goto_0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 339
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/ListExpression;, "Ljavafx/beans/binding/ListExpression<TE;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/beans/binding/ListExpression;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavafx/collections/ObservableList;

    move-object v1, v2

    .line 340
    .local v1, "list":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TE;>;"
    move-object v2, v1

    if-nez v2, :cond_0

    sget-object v2, Ljavafx/beans/binding/ListExpression;->EMPTY_LIST:Ljavafx/collections/ObservableList;

    invoke-interface {v2}, Ljavafx/collections/ObservableList;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    :goto_0
    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/ListExpression;, "Ljavafx/beans/binding/ListExpression<TE;>;"
    return-object v0

    .restart local v0    # "this":Ljavafx/beans/binding/ListExpression;, "Ljavafx/beans/binding/ListExpression<TE;>;"
    :cond_0
    move-object v2, v1

    invoke-interface {v2}, Ljavafx/collections/ObservableList;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    goto :goto_0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 345
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/ListExpression;, "Ljavafx/beans/binding/ListExpression<TE;>;"
    move v1, p1

    .local v1, "i":I
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/beans/binding/ListExpression;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/collections/ObservableList;

    move-object v2, v3

    .line 346
    .local v2, "list":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TE;>;"
    move-object v3, v2

    if-nez v3, :cond_0

    sget-object v3, Ljavafx/beans/binding/ListExpression;->EMPTY_LIST:Ljavafx/collections/ObservableList;

    move v4, v1

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v3

    :goto_0
    move-object v0, v3

    .end local v0    # "this":Ljavafx/beans/binding/ListExpression;, "Ljavafx/beans/binding/ListExpression<TE;>;"
    return-object v0

    .restart local v0    # "this":Ljavafx/beans/binding/ListExpression;, "Ljavafx/beans/binding/ListExpression<TE;>;"
    :cond_0
    move-object v3, v2

    move v4, v1

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v3

    goto :goto_0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 321
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/ListExpression;, "Ljavafx/beans/binding/ListExpression<TE;>;"
    move v1, p1

    .local v1, "i":I
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/beans/binding/ListExpression;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/collections/ObservableList;

    move-object v2, v3

    .line 322
    .local v2, "list":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TE;>;"
    move-object v3, v2

    if-nez v3, :cond_0

    sget-object v3, Ljavafx/beans/binding/ListExpression;->EMPTY_LIST:Ljavafx/collections/ObservableList;

    move v4, v1

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    :goto_0
    move-object v0, v3

    .end local v0    # "this":Ljavafx/beans/binding/ListExpression;, "Ljavafx/beans/binding/ListExpression<TE;>;"
    return-object v0

    .restart local v0    # "this":Ljavafx/beans/binding/ListExpression;, "Ljavafx/beans/binding/ListExpression<TE;>;"
    :cond_0
    move-object v3, v2

    move v4, v1

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0
.end method

.method public remove(II)V
    .locals 7

    .prologue
    .line 387
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/ListExpression;, "Ljavafx/beans/binding/ListExpression<TE;>;"
    move v1, p1

    .local v1, "from":I
    move v2, p2

    .local v2, "to":I
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/beans/binding/ListExpression;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/collections/ObservableList;

    move-object v3, v4

    .line 388
    .local v3, "list":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TE;>;"
    move-object v4, v3

    if-nez v4, :cond_0

    .line 389
    sget-object v4, Ljavafx/beans/binding/ListExpression;->EMPTY_LIST:Ljavafx/collections/ObservableList;

    move v5, v1

    move v6, v2

    invoke-interface {v4, v5, v6}, Ljavafx/collections/ObservableList;->remove(II)V

    .line 393
    :goto_0
    return-void

    .line 391
    :cond_0
    move-object v4, v3

    move v5, v1

    move v6, v2

    invoke-interface {v4, v5, v6}, Ljavafx/collections/ObservableList;->remove(II)V

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 253
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/ListExpression;, "Ljavafx/beans/binding/ListExpression<TE;>;"
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/beans/binding/ListExpression;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/collections/ObservableList;

    move-object v2, v3

    .line 254
    .local v2, "list":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TE;>;"
    move-object v3, v2

    if-nez v3, :cond_0

    sget-object v3, Ljavafx/beans/binding/ListExpression;->EMPTY_LIST:Ljavafx/collections/ObservableList;

    move-object v4, v1

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->remove(Ljava/lang/Object;)Z

    move-result v3

    :goto_0
    move v0, v3

    .end local v0    # "this":Ljavafx/beans/binding/ListExpression;, "Ljavafx/beans/binding/ListExpression<TE;>;"
    return v0

    .restart local v0    # "this":Ljavafx/beans/binding/ListExpression;, "Ljavafx/beans/binding/ListExpression<TE;>;"
    :cond_0
    move-object v3, v2

    move-object v4, v1

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->remove(Ljava/lang/Object;)Z

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
    .line 277
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/ListExpression;, "Ljavafx/beans/binding/ListExpression<TE;>;"
    move-object v1, p1

    .local v1, "objects":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/beans/binding/ListExpression;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/collections/ObservableList;

    move-object v2, v3

    .line 278
    .local v2, "list":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TE;>;"
    move-object v3, v2

    if-nez v3, :cond_0

    sget-object v3, Ljavafx/beans/binding/ListExpression;->EMPTY_LIST:Ljavafx/collections/ObservableList;

    move-object v4, v1

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->removeAll(Ljava/util/Collection;)Z

    move-result v3

    :goto_0
    move v0, v3

    .end local v0    # "this":Ljavafx/beans/binding/ListExpression;, "Ljavafx/beans/binding/ListExpression<TE;>;"
    return v0

    .restart local v0    # "this":Ljavafx/beans/binding/ListExpression;, "Ljavafx/beans/binding/ListExpression<TE;>;"
    :cond_0
    move-object v3, v2

    move-object v4, v1

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->removeAll(Ljava/util/Collection;)Z

    move-result v3

    goto :goto_0
.end method

.method public varargs removeAll([Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)Z"
        }
    .end annotation

    .prologue
    .line 375
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/ListExpression;, "Ljavafx/beans/binding/ListExpression<TE;>;"
    move-object v1, p1

    .local v1, "elements":[Ljava/lang/Object;, "[TE;"
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/beans/binding/ListExpression;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/collections/ObservableList;

    move-object v2, v3

    .line 376
    .local v2, "list":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TE;>;"
    move-object v3, v2

    if-nez v3, :cond_0

    sget-object v3, Ljavafx/beans/binding/ListExpression;->EMPTY_LIST:Ljavafx/collections/ObservableList;

    move-object v4, v1

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->removeAll([Ljava/lang/Object;)Z

    move-result v3

    :goto_0
    move v0, v3

    .end local v0    # "this":Ljavafx/beans/binding/ListExpression;, "Ljavafx/beans/binding/ListExpression<TE;>;"
    return v0

    .restart local v0    # "this":Ljavafx/beans/binding/ListExpression;, "Ljavafx/beans/binding/ListExpression<TE;>;"
    :cond_0
    move-object v3, v2

    move-object v4, v1

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->removeAll([Ljava/lang/Object;)Z

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
    .line 283
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/ListExpression;, "Ljavafx/beans/binding/ListExpression<TE;>;"
    move-object v1, p1

    .local v1, "objects":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/beans/binding/ListExpression;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/collections/ObservableList;

    move-object v2, v3

    .line 284
    .local v2, "list":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TE;>;"
    move-object v3, v2

    if-nez v3, :cond_0

    sget-object v3, Ljavafx/beans/binding/ListExpression;->EMPTY_LIST:Ljavafx/collections/ObservableList;

    move-object v4, v1

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->retainAll(Ljava/util/Collection;)Z

    move-result v3

    :goto_0
    move v0, v3

    .end local v0    # "this":Ljavafx/beans/binding/ListExpression;, "Ljavafx/beans/binding/ListExpression<TE;>;"
    return v0

    .restart local v0    # "this":Ljavafx/beans/binding/ListExpression;, "Ljavafx/beans/binding/ListExpression<TE;>;"
    :cond_0
    move-object v3, v2

    move-object v4, v1

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->retainAll(Ljava/util/Collection;)Z

    move-result v3

    goto :goto_0
.end method

.method public varargs retainAll([Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)Z"
        }
    .end annotation

    .prologue
    .line 381
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/ListExpression;, "Ljavafx/beans/binding/ListExpression<TE;>;"
    move-object v1, p1

    .local v1, "elements":[Ljava/lang/Object;, "[TE;"
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/beans/binding/ListExpression;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/collections/ObservableList;

    move-object v2, v3

    .line 382
    .local v2, "list":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TE;>;"
    move-object v3, v2

    if-nez v3, :cond_0

    sget-object v3, Ljavafx/beans/binding/ListExpression;->EMPTY_LIST:Ljavafx/collections/ObservableList;

    move-object v4, v1

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->retainAll([Ljava/lang/Object;)Z

    move-result v3

    :goto_0
    move v0, v3

    .end local v0    # "this":Ljavafx/beans/binding/ListExpression;, "Ljavafx/beans/binding/ListExpression<TE;>;"
    return v0

    .restart local v0    # "this":Ljavafx/beans/binding/ListExpression;, "Ljavafx/beans/binding/ListExpression<TE;>;"
    :cond_0
    move-object v3, v2

    move-object v4, v1

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->retainAll([Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .prologue
    .line 305
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/ListExpression;, "Ljavafx/beans/binding/ListExpression<TE;>;"
    move v1, p1

    .local v1, "i":I
    move-object v2, p2

    .local v2, "element":Ljava/lang/Object;, "TE;"
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/beans/binding/ListExpression;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/collections/ObservableList;

    move-object v3, v4

    .line 306
    .local v3, "list":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TE;>;"
    move-object v4, v3

    if-nez v4, :cond_0

    sget-object v4, Ljavafx/beans/binding/ListExpression;->EMPTY_LIST:Ljavafx/collections/ObservableList;

    move v5, v1

    move-object v6, v2

    invoke-interface {v4, v5, v6}, Ljavafx/collections/ObservableList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    :goto_0
    move-object v0, v4

    .end local v0    # "this":Ljavafx/beans/binding/ListExpression;, "Ljavafx/beans/binding/ListExpression<TE;>;"
    return-object v0

    .restart local v0    # "this":Ljavafx/beans/binding/ListExpression;, "Ljavafx/beans/binding/ListExpression<TE;>;"
    :cond_0
    move-object v4, v3

    move v5, v1

    move-object v6, v2

    invoke-interface {v4, v5, v6}, Ljavafx/collections/ObservableList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0
.end method

.method public setAll(Ljava/util/Collection;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 369
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/ListExpression;, "Ljavafx/beans/binding/ListExpression<TE;>;"
    move-object v1, p1

    .local v1, "elements":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/beans/binding/ListExpression;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/collections/ObservableList;

    move-object v2, v3

    .line 370
    .local v2, "list":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TE;>;"
    move-object v3, v2

    if-nez v3, :cond_0

    sget-object v3, Ljavafx/beans/binding/ListExpression;->EMPTY_LIST:Ljavafx/collections/ObservableList;

    move-object v4, v1

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->setAll(Ljava/util/Collection;)Z

    move-result v3

    :goto_0
    move v0, v3

    .end local v0    # "this":Ljavafx/beans/binding/ListExpression;, "Ljavafx/beans/binding/ListExpression<TE;>;"
    return v0

    .restart local v0    # "this":Ljavafx/beans/binding/ListExpression;, "Ljavafx/beans/binding/ListExpression<TE;>;"
    :cond_0
    move-object v3, v2

    move-object v4, v1

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->setAll(Ljava/util/Collection;)Z

    move-result v3

    goto :goto_0
.end method

.method public varargs setAll([Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)Z"
        }
    .end annotation

    .prologue
    .line 363
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/ListExpression;, "Ljavafx/beans/binding/ListExpression<TE;>;"
    move-object v1, p1

    .local v1, "elements":[Ljava/lang/Object;, "[TE;"
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/beans/binding/ListExpression;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/collections/ObservableList;

    move-object v2, v3

    .line 364
    .local v2, "list":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TE;>;"
    move-object v3, v2

    if-nez v3, :cond_0

    sget-object v3, Ljavafx/beans/binding/ListExpression;->EMPTY_LIST:Ljavafx/collections/ObservableList;

    move-object v4, v1

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v3

    :goto_0
    move v0, v3

    .end local v0    # "this":Ljavafx/beans/binding/ListExpression;, "Ljavafx/beans/binding/ListExpression<TE;>;"
    return v0

    .restart local v0    # "this":Ljavafx/beans/binding/ListExpression;, "Ljavafx/beans/binding/ListExpression<TE;>;"
    :cond_0
    move-object v3, v2

    move-object v4, v1

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0
.end method

.method public size()I
    .locals 3

    .prologue
    .line 211
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/ListExpression;, "Ljavafx/beans/binding/ListExpression<TE;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/beans/binding/ListExpression;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavafx/collections/ObservableList;

    move-object v1, v2

    .line 212
    .local v1, "list":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TE;>;"
    move-object v2, v1

    if-nez v2, :cond_0

    sget-object v2, Ljavafx/beans/binding/ListExpression;->EMPTY_LIST:Ljavafx/collections/ObservableList;

    invoke-interface {v2}, Ljavafx/collections/ObservableList;->size()I

    move-result v2

    :goto_0
    move v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/ListExpression;, "Ljavafx/beans/binding/ListExpression<TE;>;"
    return v0

    .restart local v0    # "this":Ljavafx/beans/binding/ListExpression;, "Ljavafx/beans/binding/ListExpression<TE;>;"
    :cond_0
    move-object v2, v1

    invoke-interface {v2}, Ljavafx/collections/ObservableList;->size()I

    move-result v2

    goto :goto_0
.end method

.method public abstract sizeProperty()Ljavafx/beans/property/ReadOnlyIntegerProperty;
.end method

.method public subList(II)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 351
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/ListExpression;, "Ljavafx/beans/binding/ListExpression<TE;>;"
    move v1, p1

    .local v1, "from":I
    move v2, p2

    .local v2, "to":I
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/beans/binding/ListExpression;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/collections/ObservableList;

    move-object v3, v4

    .line 352
    .local v3, "list":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TE;>;"
    move-object v4, v3

    if-nez v4, :cond_0

    sget-object v4, Ljavafx/beans/binding/ListExpression;->EMPTY_LIST:Ljavafx/collections/ObservableList;

    move v5, v1

    move v6, v2

    invoke-interface {v4, v5, v6}, Ljavafx/collections/ObservableList;->subList(II)Ljava/util/List;

    move-result-object v4

    :goto_0
    move-object v0, v4

    .end local v0    # "this":Ljavafx/beans/binding/ListExpression;, "Ljavafx/beans/binding/ListExpression<TE;>;"
    return-object v0

    .restart local v0    # "this":Ljavafx/beans/binding/ListExpression;, "Ljavafx/beans/binding/ListExpression<TE;>;"
    :cond_0
    move-object v4, v3

    move v5, v1

    move v6, v2

    invoke-interface {v4, v5, v6}, Ljavafx/collections/ObservableList;->subList(II)Ljava/util/List;

    move-result-object v4

    goto :goto_0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 3

    .prologue
    .line 235
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/ListExpression;, "Ljavafx/beans/binding/ListExpression<TE;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/beans/binding/ListExpression;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavafx/collections/ObservableList;

    move-object v1, v2

    .line 236
    .local v1, "list":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TE;>;"
    move-object v2, v1

    if-nez v2, :cond_0

    sget-object v2, Ljavafx/beans/binding/ListExpression;->EMPTY_LIST:Ljavafx/collections/ObservableList;

    invoke-interface {v2}, Ljavafx/collections/ObservableList;->toArray()[Ljava/lang/Object;

    move-result-object v2

    :goto_0
    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/ListExpression;, "Ljavafx/beans/binding/ListExpression<TE;>;"
    return-object v0

    .restart local v0    # "this":Ljavafx/beans/binding/ListExpression;, "Ljavafx/beans/binding/ListExpression<TE;>;"
    :cond_0
    move-object v2, v1

    invoke-interface {v2}, Ljavafx/collections/ObservableList;->toArray()[Ljava/lang/Object;

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
    .line 241
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/ListExpression;, "Ljavafx/beans/binding/ListExpression<TE;>;"
    move-object v1, p1

    .local v1, "array":[Ljava/lang/Object;, "[TT;"
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/beans/binding/ListExpression;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/collections/ObservableList;

    move-object v2, v3

    .line 242
    .local v2, "list":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TE;>;"
    move-object v3, v2

    if-nez v3, :cond_0

    sget-object v3, Ljavafx/beans/binding/ListExpression;->EMPTY_LIST:Ljavafx/collections/ObservableList;

    move-object v4, v1

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    :goto_0
    move-object v0, v3

    .end local v0    # "this":Ljavafx/beans/binding/ListExpression;, "Ljavafx/beans/binding/ListExpression<TE;>;"
    return-object v0

    .restart local v0    # "this":Ljavafx/beans/binding/ListExpression;, "Ljavafx/beans/binding/ListExpression<TE;>;"
    :cond_0
    move-object v3, v2

    move-object v4, v1

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    goto :goto_0
.end method

.method public valueAt(I)Ljavafx/beans/binding/ObjectBinding;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljavafx/beans/binding/ObjectBinding",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 136
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/ListExpression;, "Ljavafx/beans/binding/ListExpression<TE;>;"
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    move v3, v1

    invoke-static {v2, v3}, Ljavafx/beans/binding/Bindings;->valueAt(Ljavafx/collections/ObservableList;I)Ljavafx/beans/binding/ObjectBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/ListExpression;, "Ljavafx/beans/binding/ListExpression<TE;>;"
    return-object v0
.end method

.method public valueAt(Ljavafx/beans/value/ObservableIntegerValue;)Ljavafx/beans/binding/ObjectBinding;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ObservableIntegerValue;",
            ")",
            "Ljavafx/beans/binding/ObjectBinding",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 148
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/ListExpression;, "Ljavafx/beans/binding/ListExpression<TE;>;"
    move-object v1, p1

    .local v1, "index":Ljavafx/beans/value/ObservableIntegerValue;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Ljavafx/beans/binding/Bindings;->valueAt(Ljavafx/collections/ObservableList;Ljavafx/beans/value/ObservableIntegerValue;)Ljavafx/beans/binding/ObjectBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/ListExpression;, "Ljavafx/beans/binding/ListExpression<TE;>;"
    return-object v0
.end method

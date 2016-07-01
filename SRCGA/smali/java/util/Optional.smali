.class public final Ljava/util/Optional;
.super Ljava/lang/Object;
.source "Optional.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final EMPTY:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 49
    new-instance v0, Ljava/util/Optional;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/util/Optional;-><init>()V

    sput-object v0, Ljava/util/Optional;->EMPTY:Ljava/util/Optional;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Ljava/util/Optional;, "Ljava/util/Optional<TT;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 63
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Ljava/util/Optional;->value:Ljava/lang/Object;

    .line 64
    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "this":Ljava/util/Optional;, "Ljava/util/Optional<TT;>;"
    move-object v1, p1

    .local v1, "value":Ljava/lang/Object;, "TT;"
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 91
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v2, Ljava/util/Optional;->value:Ljava/lang/Object;

    .line 92
    return-void
.end method

.method public static empty()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Optional",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 80
    sget-object v1, Ljava/util/Optional;->EMPTY:Ljava/util/Optional;

    move-object v0, v1

    .line 81
    .local v0, "t":Ljava/util/Optional;, "Ljava/util/Optional<TT;>;"
    move-object v1, v0

    move-object v0, v1

    .end local v0    # "t":Ljava/util/Optional;, "Ljava/util/Optional<TT;>;"
    return-object v0
.end method

.method public static of(Ljava/lang/Object;)Ljava/util/Optional;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/util/Optional",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "value":Ljava/lang/Object;, "TT;"
    new-instance v1, Ljava/util/Optional;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Ljava/util/Optional;-><init>(Ljava/lang/Object;)V

    move-object v0, v1

    .end local v0    # "value":Ljava/lang/Object;, "TT;"
    return-object v0
.end method

.method public static ofNullable(Ljava/lang/Object;)Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/util/Optional",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 116
    move-object v0, p0

    .local v0, "value":Ljava/lang/Object;, "TT;"
    move-object v1, v0

    if-nez v1, :cond_0

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .end local v0    # "value":Ljava/lang/Object;, "TT;"
    return-object v0

    .restart local v0    # "value":Ljava/lang/Object;, "TT;"
    :cond_0
    move-object v1, v0

    invoke-static {v1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 304
    move-object v0, p0

    .local v0, "this":Ljava/util/Optional;, "Ljava/util/Optional<TT;>;"
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    if-ne v3, v4, :cond_0

    .line 305
    const/4 v3, 0x1

    move v0, v3

    .line 313
    .end local v0    # "this":Ljava/util/Optional;, "Ljava/util/Optional<TT;>;"
    :goto_0
    return v0

    .line 308
    .restart local v0    # "this":Ljava/util/Optional;, "Ljava/util/Optional<TT;>;"
    :cond_0
    move-object v3, v1

    instance-of v3, v3, Ljava/util/Optional;

    if-nez v3, :cond_1

    .line 309
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 312
    :cond_1
    move-object v3, v1

    check-cast v3, Ljava/util/Optional;

    move-object v2, v3

    .line 313
    .local v2, "other":Ljava/util/Optional;, "Ljava/util/Optional<*>;"
    move-object v3, v0

    iget-object v3, v3, Ljava/util/Optional;->value:Ljava/lang/Object;

    move-object v4, v2

    iget-object v4, v4, Ljava/util/Optional;->value:Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    move v0, v3

    goto :goto_0
.end method

.method public filter(Ljava/util/function/Predicate;)Ljava/util/Optional;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate",
            "<-TT;>;)",
            "Ljava/util/Optional",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 169
    move-object v0, p0

    .local v0, "this":Ljava/util/Optional;, "Ljava/util/Optional<TT;>;"
    move-object v1, p1

    .local v1, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TT;>;"
    move-object v2, v1

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 170
    move-object v2, v0

    invoke-virtual {v2}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-nez v2, :cond_0

    .line 171
    move-object v2, v0

    move-object v0, v2

    .line 173
    .end local v0    # "this":Ljava/util/Optional;, "Ljava/util/Optional<TT;>;"
    :goto_0
    return-object v0

    .restart local v0    # "this":Ljava/util/Optional;, "Ljava/util/Optional<TT;>;"
    :cond_0
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Ljava/util/Optional;->value:Ljava/lang/Object;

    invoke-interface {v2, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v0

    :goto_1
    move-object v0, v2

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v2

    goto :goto_1
.end method

.method public flatMap(Ljava/util/function/Function;)Ljava/util/Optional;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function",
            "<-TT;",
            "Ljava/util/Optional",
            "<TU;>;>;)",
            "Ljava/util/Optional",
            "<TU;>;"
        }
    .end annotation

    .prologue
    .line 232
    move-object v0, p0

    .local v0, "this":Ljava/util/Optional;, "Ljava/util/Optional<TT;>;"
    move-object v1, p1

    .local v1, "mapper":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;Ljava/util/Optional<TU;>;>;"
    move-object v2, v1

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 233
    move-object v2, v0

    invoke-virtual {v2}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-nez v2, :cond_0

    .line 234
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v2

    move-object v0, v2

    .line 236
    .end local v0    # "this":Ljava/util/Optional;, "Ljava/util/Optional<TT;>;"
    :goto_0
    return-object v0

    .restart local v0    # "this":Ljava/util/Optional;, "Ljava/util/Optional<TT;>;"
    :cond_0
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Ljava/util/Optional;->value:Ljava/lang/Object;

    invoke-interface {v2, v3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Optional;

    move-object v0, v2

    goto :goto_0
.end method

.method public get()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 129
    move-object v0, p0

    .local v0, "this":Ljava/util/Optional;, "Ljava/util/Optional<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljava/util/Optional;->value:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 130
    new-instance v1, Ljava/util/NoSuchElementException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "No value present"

    invoke-direct {v2, v3}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 132
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljava/util/Optional;->value:Ljava/lang/Object;

    move-object v0, v1

    .end local v0    # "this":Ljava/util/Optional;, "Ljava/util/Optional<TT;>;"
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 324
    move-object v0, p0

    .local v0, "this":Ljava/util/Optional;, "Ljava/util/Optional<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljava/util/Optional;->value:Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljava/util/Optional;, "Ljava/util/Optional<TT;>;"
    return v0
.end method

.method public ifPresent(Ljava/util/function/Consumer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 153
    move-object v0, p0

    .local v0, "this":Ljava/util/Optional;, "Ljava/util/Optional<TT;>;"
    move-object v1, p1

    .local v1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    move-object v2, v0

    iget-object v2, v2, Ljava/util/Optional;->value:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 154
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Ljava/util/Optional;->value:Ljava/lang/Object;

    invoke-interface {v2, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 155
    :cond_0
    return-void
.end method

.method public isPresent()Z
    .locals 2

    .prologue
    .line 141
    move-object v0, p0

    .local v0, "this":Ljava/util/Optional;, "Ljava/util/Optional<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljava/util/Optional;->value:Ljava/lang/Object;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljava/util/Optional;, "Ljava/util/Optional<TT;>;"
    return v0

    .restart local v0    # "this":Ljava/util/Optional;, "Ljava/util/Optional<TT;>;"
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public map(Ljava/util/function/Function;)Ljava/util/Optional;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function",
            "<-TT;+TU;>;)",
            "Ljava/util/Optional",
            "<TU;>;"
        }
    .end annotation

    .prologue
    .line 206
    move-object v0, p0

    .local v0, "this":Ljava/util/Optional;, "Ljava/util/Optional<TT;>;"
    move-object v1, p1

    .local v1, "mapper":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TU;>;"
    move-object v2, v1

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 207
    move-object v2, v0

    invoke-virtual {v2}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-nez v2, :cond_0

    .line 208
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v2

    move-object v0, v2

    .line 210
    .end local v0    # "this":Ljava/util/Optional;, "Ljava/util/Optional<TT;>;"
    :goto_0
    return-object v0

    .restart local v0    # "this":Ljava/util/Optional;, "Ljava/util/Optional<TT;>;"
    :cond_0
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Ljava/util/Optional;->value:Ljava/lang/Object;

    invoke-interface {v2, v3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public orElse(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 248
    move-object v0, p0

    .local v0, "this":Ljava/util/Optional;, "Ljava/util/Optional<TT;>;"
    move-object v1, p1

    .local v1, "other":Ljava/lang/Object;, "TT;"
    move-object v2, v0

    iget-object v2, v2, Ljava/util/Optional;->value:Ljava/lang/Object;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Ljava/util/Optional;->value:Ljava/lang/Object;

    :goto_0
    move-object v0, v2

    .end local v0    # "this":Ljava/util/Optional;, "Ljava/util/Optional<TT;>;"
    return-object v0

    .restart local v0    # "this":Ljava/util/Optional;, "Ljava/util/Optional<TT;>;"
    :cond_0
    move-object v2, v1

    goto :goto_0
.end method

.method public orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier",
            "<+TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 262
    move-object v0, p0

    .local v0, "this":Ljava/util/Optional;, "Ljava/util/Optional<TT;>;"
    move-object v1, p1

    .local v1, "other":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<+TT;>;"
    move-object v2, v0

    iget-object v2, v2, Ljava/util/Optional;->value:Ljava/lang/Object;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Ljava/util/Optional;->value:Ljava/lang/Object;

    :goto_0
    move-object v0, v2

    .end local v0    # "this":Ljava/util/Optional;, "Ljava/util/Optional<TT;>;"
    return-object v0

    .restart local v0    # "this":Ljava/util/Optional;, "Ljava/util/Optional<TT;>;"
    :cond_0
    move-object v2, v1

    invoke-interface {v2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    goto :goto_0
.end method

.method public orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/util/function/Supplier",
            "<+TX;>;)TT;^TX;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 282
    move-object v0, p0

    .local v0, "this":Ljava/util/Optional;, "Ljava/util/Optional<TT;>;"
    move-object v1, p1

    .local v1, "exceptionSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<+TX;>;"
    move-object v2, v0

    iget-object v2, v2, Ljava/util/Optional;->value:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 283
    move-object v2, v0

    iget-object v2, v2, Ljava/util/Optional;->value:Ljava/lang/Object;

    move-object v0, v2

    .end local v0    # "this":Ljava/util/Optional;, "Ljava/util/Optional<TT;>;"
    return-object v0

    .line 285
    .restart local v0    # "this":Ljava/util/Optional;, "Ljava/util/Optional<TT;>;"
    :cond_0
    move-object v2, v1

    invoke-interface {v2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Throwable;

    throw v2
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 340
    move-object v0, p0

    .local v0, "this":Ljava/util/Optional;, "Ljava/util/Optional<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljava/util/Optional;->value:Ljava/lang/Object;

    if-eqz v1, :cond_0

    const-string v1, "Optional[%s]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    move-object v5, v0

    iget-object v5, v5, Ljava/util/Optional;->value:Ljava/lang/Object;

    aput-object v5, v3, v4

    .line 341
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljava/util/Optional;, "Ljava/util/Optional<TT;>;"
    return-object v0

    .restart local v0    # "this":Ljava/util/Optional;, "Ljava/util/Optional<TT;>;"
    :cond_0
    const-string v1, "Optional.empty"

    goto :goto_0
.end method

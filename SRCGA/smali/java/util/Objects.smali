.class public final Ljava/util/Objects;
.super Ljava/lang/Object;
.source "Objects.java"


# direct methods
.method private constructor <init>()V
    .locals 5

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Ljava/util/Objects;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v1, Ljava/lang/AssertionError;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "No java.util.Objects instances for you!"

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public static compare(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;",
            "Ljava/util/Comparator",
            "<-TT;>;)I"
        }
    .end annotation

    .prologue
    .line 183
    move-object v0, p0

    .local v0, "a":Ljava/lang/Object;, "TT;"
    move-object v1, p1

    .local v1, "b":Ljava/lang/Object;, "TT;"
    move-object v2, p2

    .local v2, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    move-object v3, v0

    move-object v4, v1

    if-ne v3, v4, :cond_0

    const/4 v3, 0x0

    :goto_0
    move v0, v3

    .end local v0    # "a":Ljava/lang/Object;, "TT;"
    return v0

    .restart local v0    # "a":Ljava/lang/Object;, "TT;"
    :cond_0
    move-object v3, v2

    move-object v4, v0

    move-object v5, v1

    invoke-interface {v3, v4, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    goto :goto_0
.end method

.method public static deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "a":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "b":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    if-ne v2, v3, :cond_0

    .line 81
    const/4 v2, 0x1

    move v0, v2

    .line 85
    .end local v0    # "a":Ljava/lang/Object;
    :goto_0
    return v0

    .line 82
    .restart local v0    # "a":Ljava/lang/Object;
    :cond_0
    move-object v2, v0

    if-eqz v2, :cond_1

    move-object v2, v1

    if-nez v2, :cond_2

    .line 83
    :cond_1
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0

    .line 85
    :cond_2
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Ljava/util/Arrays;->deepEquals0(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    goto :goto_0
.end method

.method public static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "a":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "b":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    if-eq v2, v3, :cond_0

    move-object v2, v0

    if-eqz v2, :cond_1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "a":Ljava/lang/Object;
    return v0

    .restart local v0    # "a":Ljava/lang/Object;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static varargs hash([Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 128
    move-object v0, p0

    .local v0, "values":[Ljava/lang/Object;
    move-object v1, v0

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    move v0, v1

    .end local v0    # "values":[Ljava/lang/Object;
    return v0
.end method

.method public static hashCode(Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "o":Ljava/lang/Object;
    move-object v1, v0

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    move v0, v1

    .end local v0    # "o":Ljava/lang/Object;
    return v0

    .restart local v0    # "o":Ljava/lang/Object;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isNull(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 247
    move-object v0, p0

    .local v0, "obj":Ljava/lang/Object;
    move-object v1, v0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "obj":Ljava/lang/Object;
    return v0

    .restart local v0    # "obj":Ljava/lang/Object;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static nonNull(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 265
    move-object v0, p0

    .local v0, "obj":Ljava/lang/Object;
    move-object v1, v0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "obj":Ljava/lang/Object;
    return v0

    .restart local v0    # "obj":Ljava/lang/Object;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 202
    move-object v0, p0

    .local v0, "obj":Ljava/lang/Object;, "TT;"
    move-object v1, v0

    if-nez v1, :cond_0

    .line 203
    new-instance v1, Ljava/lang/NullPointerException;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 204
    :cond_0
    move-object v1, v0

    move-object v0, v1

    .end local v0    # "obj":Ljava/lang/Object;, "TT;"
    return-object v0
.end method

.method public static requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 227
    move-object v0, p0

    .local v0, "obj":Ljava/lang/Object;, "TT;"
    move-object v1, p1

    .local v1, "message":Ljava/lang/String;
    move-object v2, v0

    if-nez v2, :cond_0

    .line 228
    new-instance v2, Ljava/lang/NullPointerException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 229
    :cond_0
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "obj":Ljava/lang/Object;, "TT;"
    return-object v0
.end method

.method public static requireNonNull(Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/util/function/Supplier",
            "<",
            "Ljava/lang/String;",
            ">;)TT;"
        }
    .end annotation

    .prologue
    .line 289
    move-object v0, p0

    .local v0, "obj":Ljava/lang/Object;, "TT;"
    move-object v1, p1

    .local v1, "messageSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/lang/String;>;"
    move-object v2, v0

    if-nez v2, :cond_0

    .line 290
    new-instance v2, Ljava/lang/NullPointerException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-interface {v4}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 291
    :cond_0
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "obj":Ljava/lang/Object;, "TT;"
    return-object v0
.end method

.method public static toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 142
    move-object v0, p0

    .local v0, "o":Ljava/lang/Object;
    move-object v1, v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "o":Ljava/lang/Object;
    return-object v0
.end method

.method public static toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "o":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "nullDefault":Ljava/lang/String;
    move-object v2, v0

    if-eqz v2, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    move-object v0, v2

    .end local v0    # "o":Ljava/lang/Object;
    return-object v0

    .restart local v0    # "o":Ljava/lang/Object;
    :cond_0
    move-object v2, v1

    goto :goto_0
.end method

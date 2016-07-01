.class public Ljavafx/css/ParsedValue;
.super Ljava/lang/Object;
.source "ParsedValue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final converter:Ljavafx/css/StyleConverter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/css/StyleConverter",
            "<TV;TT;>;"
        }
    .end annotation
.end field

.field protected final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Ljavafx/css/StyleConverter",
            "<TV;TT;>;)V"
        }
    .end annotation

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "this":Ljavafx/css/ParsedValue;, "Ljavafx/css/ParsedValue<TV;TT;>;"
    move-object v1, p1

    .local v1, "value":Ljava/lang/Object;, "TV;"
    move-object v2, p2

    .local v2, "converter":Ljavafx/css/StyleConverter;, "Ljavafx/css/StyleConverter<TV;TT;>;"
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 97
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/css/ParsedValue;->value:Ljava/lang/Object;

    .line 98
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Ljavafx/css/ParsedValue;->converter:Ljavafx/css/StyleConverter;

    .line 99
    return-void
.end method


# virtual methods
.method public convert(Ljavafx/scene/text/Font;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/text/Font;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "this":Ljavafx/css/ParsedValue;, "Ljavafx/css/ParsedValue<TV;TT;>;"
    move-object v1, p1

    .local v1, "font":Ljavafx/scene/text/Font;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/css/ParsedValue;->converter:Ljavafx/css/StyleConverter;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Ljavafx/css/ParsedValue;->converter:Ljavafx/css/StyleConverter;

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Ljavafx/css/StyleConverter;->convert(Ljavafx/css/ParsedValue;Ljavafx/scene/text/Font;)Ljava/lang/Object;

    move-result-object v2

    :goto_0
    move-object v0, v2

    .end local v0    # "this":Ljavafx/css/ParsedValue;, "Ljavafx/css/ParsedValue<TV;TT;>;"
    return-object v0

    .restart local v0    # "this":Ljavafx/css/ParsedValue;, "Ljavafx/css/ParsedValue<TV;TT;>;"
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Ljavafx/css/ParsedValue;->value:Ljava/lang/Object;

    goto :goto_0
.end method

.method public final getConverter()Ljavafx/css/StyleConverter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/css/StyleConverter",
            "<TV;TT;>;"
        }
    .end annotation

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Ljavafx/css/ParsedValue;, "Ljavafx/css/ParsedValue<TV;TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/css/ParsedValue;->converter:Ljavafx/css/StyleConverter;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/css/ParsedValue;, "Ljavafx/css/ParsedValue<TV;TT;>;"
    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Ljavafx/css/ParsedValue;, "Ljavafx/css/ParsedValue<TV;TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/css/ParsedValue;->value:Ljava/lang/Object;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/css/ParsedValue;, "Ljavafx/css/ParsedValue<TV;TT;>;"
    return-object v0
.end method

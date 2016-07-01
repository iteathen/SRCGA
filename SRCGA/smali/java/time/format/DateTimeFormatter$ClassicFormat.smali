.class Ljava/time/format/DateTimeFormatter$ClassicFormat;
.super Ljava/text/Format;
.source "DateTimeFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/time/format/DateTimeFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ClassicFormat"
.end annotation


# instance fields
.field private final formatter:Ljava/time/format/DateTimeFormatter;

.field private final query:Ljava/time/temporal/TemporalQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/time/temporal/TemporalQuery",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/time/format/DateTimeFormatter;Ljava/time/temporal/TemporalQuery;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/format/DateTimeFormatter;",
            "Ljava/time/temporal/TemporalQuery",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1728
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatter$ClassicFormat;
    move-object v1, p1

    .local v1, "formatter":Ljava/time/format/DateTimeFormatter;
    move-object v2, p2

    .local v2, "query":Ljava/time/temporal/TemporalQuery;, "Ljava/time/temporal/TemporalQuery<*>;"
    move-object v3, v0

    invoke-direct {v3}, Ljava/text/Format;-><init>()V

    .line 1729
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljava/time/format/DateTimeFormatter$ClassicFormat;->formatter:Ljava/time/format/DateTimeFormatter;

    .line 1730
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Ljava/time/format/DateTimeFormatter$ClassicFormat;->query:Ljava/time/temporal/TemporalQuery;

    .line 1731
    return-void
.end method


# virtual methods
.method public format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 10

    .prologue
    .line 1735
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatter$ClassicFormat;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "toAppendTo":Ljava/lang/StringBuffer;
    move-object v3, p3

    .local v3, "pos":Ljava/text/FieldPosition;
    move-object v5, v1

    const-string v6, "obj"

    invoke-static {v5, v6}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 1736
    move-object v5, v2

    const-string v6, "toAppendTo"

    invoke-static {v5, v6}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 1737
    move-object v5, v3

    const-string v6, "pos"

    invoke-static {v5, v6}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 1738
    move-object v5, v1

    instance-of v5, v5, Ljava/time/temporal/TemporalAccessor;

    if-nez v5, :cond_0

    .line 1739
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string v7, "Format target must implement TemporalAccessor"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1741
    :cond_0
    move-object v5, v3

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 1742
    move-object v5, v3

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/text/FieldPosition;->setEndIndex(I)V

    .line 1744
    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Ljava/time/format/DateTimeFormatter$ClassicFormat;->formatter:Ljava/time/format/DateTimeFormatter;

    move-object v6, v1

    check-cast v6, Ljava/time/temporal/TemporalAccessor;

    move-object v7, v2

    invoke-virtual {v5, v6, v7}, Ljava/time/format/DateTimeFormatter;->formatTo(Ljava/time/temporal/TemporalAccessor;Ljava/lang/Appendable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1747
    .line 1748
    move-object v5, v2

    move-object v0, v5

    .end local v0    # "this":Ljava/time/format/DateTimeFormatter$ClassicFormat;
    return-object v0

    .line 1745
    .restart local v0    # "this":Ljava/time/format/DateTimeFormatter$ClassicFormat;
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 1746
    .local v4, "ex":Ljava/lang/RuntimeException;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v4

    invoke-virtual {v7}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v7

    move-object v8, v4

    invoke-direct {v6, v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method public parseObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 1752
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatter$ClassicFormat;
    move-object v1, p1

    .local v1, "text":Ljava/lang/String;
    move-object v3, v1

    const-string v4, "text"

    invoke-static {v3, v4}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 1754
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Ljava/time/format/DateTimeFormatter$ClassicFormat;->query:Ljava/time/temporal/TemporalQuery;

    if-nez v3, :cond_0

    .line 1755
    move-object v3, v0

    iget-object v3, v3, Ljava/time/format/DateTimeFormatter$ClassicFormat;->formatter:Ljava/time/format/DateTimeFormatter;

    move-object v4, v1

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Ljava/time/format/DateTimeFormatter;->access$000(Ljava/time/format/DateTimeFormatter;Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Ljava/time/format/DateTimeBuilder;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Ljava/time/format/DateTimeFormatter$ClassicFormat;->formatter:Ljava/time/format/DateTimeFormatter;

    .line 1756
    invoke-virtual {v4}, Ljava/time/format/DateTimeFormatter;->getResolverStyle()Ljava/time/format/ResolverStyle;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Ljava/time/format/DateTimeFormatter$ClassicFormat;->formatter:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v5}, Ljava/time/format/DateTimeFormatter;->getResolverFields()Ljava/util/Set;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/time/format/DateTimeBuilder;->resolve(Ljava/time/format/ResolverStyle;Ljava/util/Set;)Ljava/time/format/DateTimeBuilder;

    move-result-object v3

    move-object v0, v3

    .line 1758
    .end local v0    # "this":Ljava/time/format/DateTimeFormatter$ClassicFormat;
    :goto_0
    return-object v0

    .restart local v0    # "this":Ljava/time/format/DateTimeFormatter$ClassicFormat;
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Ljava/time/format/DateTimeFormatter$ClassicFormat;->formatter:Ljava/time/format/DateTimeFormatter;

    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Ljava/time/format/DateTimeFormatter$ClassicFormat;->query:Ljava/time/temporal/TemporalQuery;

    invoke-virtual {v3, v4, v5}, Ljava/time/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/time/format/DateTimeParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 1759
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 1760
    .local v2, "ex":Ljava/time/format/DateTimeParseException;
    new-instance v3, Ljava/text/ParseException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v2

    invoke-virtual {v5}, Ljava/time/format/DateTimeParseException;->getMessage()Ljava/lang/String;

    move-result-object v5

    move-object v6, v2

    invoke-virtual {v6}, Ljava/time/format/DateTimeParseException;->getErrorIndex()I

    move-result v6

    invoke-direct {v4, v5, v6}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 1761
    .end local v2    # "ex":Ljava/time/format/DateTimeParseException;
    :catch_1
    move-exception v3

    move-object v2, v3

    .line 1762
    .local v2, "ex":Ljava/lang/RuntimeException;
    new-instance v3, Ljava/text/ParseException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/text/ParseException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v3

    check-cast v3, Ljava/text/ParseException;

    throw v3
.end method

.method public parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .locals 8

    .prologue
    .line 1767
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatter$ClassicFormat;
    move-object v1, p1

    .local v1, "text":Ljava/lang/String;
    move-object v2, p2

    .local v2, "pos":Ljava/text/ParsePosition;
    move-object v5, v1

    const-string v6, "text"

    invoke-static {v5, v6}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 1770
    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Ljava/time/format/DateTimeFormatter$ClassicFormat;->formatter:Ljava/time/format/DateTimeFormatter;

    move-object v6, v1

    move-object v7, v2

    invoke-static {v5, v6, v7}, Ljava/time/format/DateTimeFormatter;->access$100(Ljava/time/format/DateTimeFormatter;Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Ljava/time/format/DateTimeParseContext$Parsed;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    move-object v3, v5

    .line 1776
    .line 1777
    .local v3, "unresolved":Ljava/time/format/DateTimeParseContext$Parsed;
    move-object v5, v3

    if-nez v5, :cond_2

    .line 1778
    move-object v5, v2

    invoke-virtual {v5}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v5

    if-gez v5, :cond_0

    .line 1779
    move-object v5, v2

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 1781
    :cond_0
    const/4 v5, 0x0

    move-object v0, v5

    .line 1792
    .end local v0    # "this":Ljava/time/format/DateTimeFormatter$ClassicFormat;
    .end local v3    # "unresolved":Ljava/time/format/DateTimeParseContext$Parsed;
    :goto_0
    return-object v0

    .line 1771
    .restart local v0    # "this":Ljava/time/format/DateTimeFormatter$ClassicFormat;
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 1772
    .local v4, "ex":Ljava/lang/IndexOutOfBoundsException;
    move-object v5, v2

    invoke-virtual {v5}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v5

    if-gez v5, :cond_1

    .line 1773
    move-object v5, v2

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 1775
    :cond_1
    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_0

    .line 1784
    .end local v4    # "ex":Ljava/lang/IndexOutOfBoundsException;
    .restart local v3    # "unresolved":Ljava/time/format/DateTimeParseContext$Parsed;
    :cond_2
    move-object v5, v3

    :try_start_1
    invoke-virtual {v5}, Ljava/time/format/DateTimeParseContext$Parsed;->toBuilder()Ljava/time/format/DateTimeBuilder;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Ljava/time/format/DateTimeFormatter$ClassicFormat;->formatter:Ljava/time/format/DateTimeFormatter;

    .line 1785
    invoke-virtual {v6}, Ljava/time/format/DateTimeFormatter;->getResolverStyle()Ljava/time/format/ResolverStyle;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Ljava/time/format/DateTimeFormatter$ClassicFormat;->formatter:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v7}, Ljava/time/format/DateTimeFormatter;->getResolverFields()Ljava/util/Set;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/time/format/DateTimeBuilder;->resolve(Ljava/time/format/ResolverStyle;Ljava/util/Set;)Ljava/time/format/DateTimeBuilder;

    move-result-object v5

    move-object v4, v5

    .line 1786
    .local v4, "builder":Ljava/time/format/DateTimeBuilder;
    move-object v5, v0

    iget-object v5, v5, Ljava/time/format/DateTimeFormatter$ClassicFormat;->query:Ljava/time/temporal/TemporalQuery;

    if-nez v5, :cond_3

    .line 1787
    move-object v5, v4

    move-object v0, v5

    goto :goto_0

    .line 1789
    :cond_3
    move-object v5, v4

    move-object v6, v0

    iget-object v6, v6, Ljava/time/format/DateTimeFormatter$ClassicFormat;->query:Ljava/time/temporal/TemporalQuery;

    invoke-virtual {v5, v6}, Ljava/time/format/DateTimeBuilder;->build(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 1790
    .end local v4    # "builder":Ljava/time/format/DateTimeBuilder;
    :catch_1
    move-exception v5

    move-object v4, v5

    .line 1791
    .local v4, "ex":Ljava/lang/RuntimeException;
    move-object v5, v2

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 1792
    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_0
.end method

.class Ljava/time/chrono/AbstractChronology$2;
.super Ljava/time/jdk8/DefaultInterfaceTemporalAccessor;
.source "AbstractChronology.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/time/chrono/AbstractChronology;->getDisplayName(Ljava/time/format/TextStyle;Ljava/util/Locale;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljava/time/chrono/AbstractChronology;


# direct methods
.method constructor <init>(Ljava/time/chrono/AbstractChronology;)V
    .locals 4

    .prologue
    .line 759
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/AbstractChronology$2;
    move-object v1, p1

    .local v1, "this$0":Ljava/time/chrono/AbstractChronology;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljava/time/chrono/AbstractChronology$2;->this$0:Ljava/time/chrono/AbstractChronology;

    move-object v2, v0

    invoke-direct {v2}, Ljava/time/jdk8/DefaultInterfaceTemporalAccessor;-><init>()V

    return-void
.end method


# virtual methods
.method public getLong(Ljava/time/temporal/TemporalField;)J
    .locals 7

    .prologue
    .line 766
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/AbstractChronology$2;
    move-object v1, p1

    .local v1, "field":Ljava/time/temporal/TemporalField;
    new-instance v2, Ljava/time/temporal/UnsupportedTemporalTypeException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported field: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public isSupported(Ljava/time/temporal/TemporalField;)Z
    .locals 3

    .prologue
    .line 762
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/AbstractChronology$2;
    move-object v1, p1

    .local v1, "field":Ljava/time/temporal/TemporalField;
    const/4 v2, 0x0

    move v0, v2

    .end local v0    # "this":Ljava/time/chrono/AbstractChronology$2;
    return v0
.end method

.method public query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/time/temporal/TemporalQuery",
            "<TR;>;)TR;"
        }
    .end annotation

    .prologue
    .line 771
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/AbstractChronology$2;
    move-object v1, p1

    .local v1, "query":Ljava/time/temporal/TemporalQuery;, "Ljava/time/temporal/TemporalQuery<TR;>;"
    move-object v2, v1

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->chronology()Ljava/time/temporal/TemporalQuery;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 772
    move-object v2, v0

    iget-object v2, v2, Ljava/time/chrono/AbstractChronology$2;->this$0:Ljava/time/chrono/AbstractChronology;

    move-object v0, v2

    .line 774
    .end local v0    # "this":Ljava/time/chrono/AbstractChronology$2;
    :goto_0
    return-object v0

    .restart local v0    # "this":Ljava/time/chrono/AbstractChronology$2;
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Ljava/time/jdk8/DefaultInterfaceTemporalAccessor;->query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.class final Ljava/time/format/DateTimeFormatter$2;
.super Ljava/lang/Object;
.source "DateTimeFormatter.java"

# interfaces
.implements Ljava/time/temporal/TemporalQuery;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/time/format/DateTimeFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/time/temporal/TemporalQuery",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 978
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatter$2;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public queryFrom(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/Boolean;
    .locals 3

    .prologue
    .line 980
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatter$2;
    move-object v1, p1

    .local v1, "temporal":Ljava/time/temporal/TemporalAccessor;
    move-object v2, v1

    instance-of v2, v2, Ljava/time/format/DateTimeBuilder;

    if-eqz v2, :cond_0

    .line 981
    move-object v2, v1

    check-cast v2, Ljava/time/format/DateTimeBuilder;

    iget-boolean v2, v2, Ljava/time/format/DateTimeBuilder;->leapSecond:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object v0, v2

    .line 983
    .end local v0    # "this":Ljava/time/format/DateTimeFormatter$2;
    :goto_0
    return-object v0

    .restart local v0    # "this":Ljava/time/format/DateTimeFormatter$2;
    :cond_0
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object v0, v2

    goto :goto_0
.end method

.method public bridge synthetic queryFrom(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 978
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatter$2;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/format/DateTimeFormatter$2;->queryFrom(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/Boolean;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/format/DateTimeFormatter$2;
    return-object v0
.end method

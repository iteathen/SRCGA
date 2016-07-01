.class final Ljava/time/Month$1;
.super Ljava/lang/Object;
.source "Month.java"

# interfaces
.implements Ljava/time/temporal/TemporalQuery;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/time/Month;
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
        "Ljava/time/Month;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 140
    move-object v0, p0

    .local v0, "this":Ljava/time/Month$1;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic queryFrom(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 140
    move-object v0, p0

    .local v0, "this":Ljava/time/Month$1;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/Month$1;->queryFrom(Ljava/time/temporal/TemporalAccessor;)Ljava/time/Month;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/Month$1;
    return-object v0
.end method

.method public queryFrom(Ljava/time/temporal/TemporalAccessor;)Ljava/time/Month;
    .locals 3

    .prologue
    .line 143
    move-object v0, p0

    .local v0, "this":Ljava/time/Month$1;
    move-object v1, p1

    .local v1, "temporal":Ljava/time/temporal/TemporalAccessor;
    move-object v2, v1

    invoke-static {v2}, Ljava/time/Month;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/Month;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/Month$1;
    return-object v0
.end method

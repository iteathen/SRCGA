.class Ljava/time/temporal/TemporalAdjusters$Impl;
.super Ljava/lang/Object;
.source "TemporalAdjusters.java"

# interfaces
.implements Ljava/time/temporal/TemporalAdjuster;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/time/temporal/TemporalAdjusters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Impl"
.end annotation


# static fields
.field private static final FIRST_DAY_OF_MONTH:Ljava/time/temporal/TemporalAdjusters$Impl;

.field private static final FIRST_DAY_OF_NEXT_MONTH:Ljava/time/temporal/TemporalAdjusters$Impl;

.field private static final FIRST_DAY_OF_NEXT_YEAR:Ljava/time/temporal/TemporalAdjusters$Impl;

.field private static final FIRST_DAY_OF_YEAR:Ljava/time/temporal/TemporalAdjusters$Impl;

.field private static final LAST_DAY_OF_MONTH:Ljava/time/temporal/TemporalAdjusters$Impl;

.field private static final LAST_DAY_OF_YEAR:Ljava/time/temporal/TemporalAdjusters$Impl;


# instance fields
.field private final ordinal:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 214
    new-instance v0, Ljava/time/temporal/TemporalAdjusters$Impl;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/time/temporal/TemporalAdjusters$Impl;-><init>(I)V

    sput-object v0, Ljava/time/temporal/TemporalAdjusters$Impl;->FIRST_DAY_OF_MONTH:Ljava/time/temporal/TemporalAdjusters$Impl;

    .line 216
    new-instance v0, Ljava/time/temporal/TemporalAdjusters$Impl;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/time/temporal/TemporalAdjusters$Impl;-><init>(I)V

    sput-object v0, Ljava/time/temporal/TemporalAdjusters$Impl;->LAST_DAY_OF_MONTH:Ljava/time/temporal/TemporalAdjusters$Impl;

    .line 218
    new-instance v0, Ljava/time/temporal/TemporalAdjusters$Impl;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/time/temporal/TemporalAdjusters$Impl;-><init>(I)V

    sput-object v0, Ljava/time/temporal/TemporalAdjusters$Impl;->FIRST_DAY_OF_NEXT_MONTH:Ljava/time/temporal/TemporalAdjusters$Impl;

    .line 220
    new-instance v0, Ljava/time/temporal/TemporalAdjusters$Impl;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/time/temporal/TemporalAdjusters$Impl;-><init>(I)V

    sput-object v0, Ljava/time/temporal/TemporalAdjusters$Impl;->FIRST_DAY_OF_YEAR:Ljava/time/temporal/TemporalAdjusters$Impl;

    .line 222
    new-instance v0, Ljava/time/temporal/TemporalAdjusters$Impl;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ljava/time/temporal/TemporalAdjusters$Impl;-><init>(I)V

    sput-object v0, Ljava/time/temporal/TemporalAdjusters$Impl;->LAST_DAY_OF_YEAR:Ljava/time/temporal/TemporalAdjusters$Impl;

    .line 224
    new-instance v0, Ljava/time/temporal/TemporalAdjusters$Impl;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ljava/time/temporal/TemporalAdjusters$Impl;-><init>(I)V

    sput-object v0, Ljava/time/temporal/TemporalAdjusters$Impl;->FIRST_DAY_OF_NEXT_YEAR:Ljava/time/temporal/TemporalAdjusters$Impl;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 4

    .prologue
    .line 227
    move-object v0, p0

    .local v0, "this":Ljava/time/temporal/TemporalAdjusters$Impl;
    move v1, p1

    .local v1, "ordinal":I
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 228
    move-object v2, v0

    move v3, v1

    iput v3, v2, Ljava/time/temporal/TemporalAdjusters$Impl;->ordinal:I

    .line 229
    return-void
.end method

.method static synthetic access$000()Ljava/time/temporal/TemporalAdjusters$Impl;
    .locals 1

    .prologue
    .line 212
    sget-object v0, Ljava/time/temporal/TemporalAdjusters$Impl;->FIRST_DAY_OF_MONTH:Ljava/time/temporal/TemporalAdjusters$Impl;

    return-object v0
.end method

.method static synthetic access$100()Ljava/time/temporal/TemporalAdjusters$Impl;
    .locals 1

    .prologue
    .line 212
    sget-object v0, Ljava/time/temporal/TemporalAdjusters$Impl;->LAST_DAY_OF_MONTH:Ljava/time/temporal/TemporalAdjusters$Impl;

    return-object v0
.end method

.method static synthetic access$200()Ljava/time/temporal/TemporalAdjusters$Impl;
    .locals 1

    .prologue
    .line 212
    sget-object v0, Ljava/time/temporal/TemporalAdjusters$Impl;->FIRST_DAY_OF_NEXT_MONTH:Ljava/time/temporal/TemporalAdjusters$Impl;

    return-object v0
.end method

.method static synthetic access$300()Ljava/time/temporal/TemporalAdjusters$Impl;
    .locals 1

    .prologue
    .line 212
    sget-object v0, Ljava/time/temporal/TemporalAdjusters$Impl;->FIRST_DAY_OF_YEAR:Ljava/time/temporal/TemporalAdjusters$Impl;

    return-object v0
.end method

.method static synthetic access$400()Ljava/time/temporal/TemporalAdjusters$Impl;
    .locals 1

    .prologue
    .line 212
    sget-object v0, Ljava/time/temporal/TemporalAdjusters$Impl;->LAST_DAY_OF_YEAR:Ljava/time/temporal/TemporalAdjusters$Impl;

    return-object v0
.end method

.method static synthetic access$500()Ljava/time/temporal/TemporalAdjusters$Impl;
    .locals 1

    .prologue
    .line 212
    sget-object v0, Ljava/time/temporal/TemporalAdjusters$Impl;->FIRST_DAY_OF_NEXT_YEAR:Ljava/time/temporal/TemporalAdjusters$Impl;

    return-object v0
.end method


# virtual methods
.method public adjustInto(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;
    .locals 7

    .prologue
    .line 232
    move-object v0, p0

    .local v0, "this":Ljava/time/temporal/TemporalAdjusters$Impl;
    move-object v1, p1

    .local v1, "temporal":Ljava/time/temporal/Temporal;
    move-object v2, v0

    iget v2, v2, Ljava/time/temporal/TemporalAdjusters$Impl;->ordinal:I

    packed-switch v2, :pswitch_data_0

    .line 240
    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string v4, "Unreachable"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 233
    :pswitch_0
    move-object v2, v1

    sget-object v3, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    const-wide/16 v4, 0x1

    invoke-interface {v2, v3, v4, v5}, Ljava/time/temporal/Temporal;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;

    move-result-object v2

    move-object v0, v2

    .line 238
    .end local v0    # "this":Ljava/time/temporal/TemporalAdjusters$Impl;
    :goto_0
    return-object v0

    .line 234
    .restart local v0    # "this":Ljava/time/temporal/TemporalAdjusters$Impl;
    :pswitch_1
    move-object v2, v1

    sget-object v3, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    move-object v4, v1

    sget-object v5, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-interface {v4, v5}, Ljava/time/temporal/Temporal;->range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;

    move-result-object v4

    invoke-virtual {v4}, Ljava/time/temporal/ValueRange;->getMaximum()J

    move-result-wide v4

    invoke-interface {v2, v3, v4, v5}, Ljava/time/temporal/Temporal;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 235
    :pswitch_2
    move-object v2, v1

    sget-object v3, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    const-wide/16 v4, 0x1

    invoke-interface {v2, v3, v4, v5}, Ljava/time/temporal/Temporal;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;

    move-result-object v2

    const-wide/16 v3, 0x1

    sget-object v5, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {v2, v3, v4, v5}, Ljava/time/temporal/Temporal;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 236
    :pswitch_3
    move-object v2, v1

    sget-object v3, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    const-wide/16 v4, 0x1

    invoke-interface {v2, v3, v4, v5}, Ljava/time/temporal/Temporal;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 237
    :pswitch_4
    move-object v2, v1

    sget-object v3, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    move-object v4, v1

    sget-object v5, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {v4, v5}, Ljava/time/temporal/Temporal;->range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;

    move-result-object v4

    invoke-virtual {v4}, Ljava/time/temporal/ValueRange;->getMaximum()J

    move-result-wide v4

    invoke-interface {v2, v3, v4, v5}, Ljava/time/temporal/Temporal;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 238
    :pswitch_5
    move-object v2, v1

    sget-object v3, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    const-wide/16 v4, 0x1

    invoke-interface {v2, v3, v4, v5}, Ljava/time/temporal/Temporal;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;

    move-result-object v2

    const-wide/16 v3, 0x1

    sget-object v5, Ljava/time/temporal/ChronoUnit;->YEARS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {v2, v3, v4, v5}, Ljava/time/temporal/Temporal;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 232
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

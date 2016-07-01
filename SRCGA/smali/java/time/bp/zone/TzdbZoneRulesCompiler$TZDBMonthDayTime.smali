.class abstract Ljava/time/bp/zone/TzdbZoneRulesCompiler$TZDBMonthDayTime;
.super Ljava/lang/Object;
.source "TzdbZoneRulesCompiler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/time/bp/zone/TzdbZoneRulesCompiler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "TZDBMonthDayTime"
.end annotation


# instance fields
.field adjustForwards:Z

.field dayOfMonth:I

.field dayOfWeek:Ljava/time/DayOfWeek;

.field endOfDay:Z

.field month:Ljava/time/Month;

.field final synthetic this$0:Ljava/time/bp/zone/TzdbZoneRulesCompiler;

.field time:Ljava/time/LocalTime;

.field timeDefinition:Ljava/time/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;


# direct methods
.method constructor <init>(Ljava/time/bp/zone/TzdbZoneRulesCompiler;)V
    .locals 4

    .prologue
    .line 1027
    move-object v0, p0

    .local v0, "this":Ljava/time/bp/zone/TzdbZoneRulesCompiler$TZDBMonthDayTime;
    move-object v1, p1

    .local v1, "this$0":Ljava/time/bp/zone/TzdbZoneRulesCompiler;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljava/time/bp/zone/TzdbZoneRulesCompiler$TZDBMonthDayTime;->this$0:Ljava/time/bp/zone/TzdbZoneRulesCompiler;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 1029
    move-object v2, v0

    sget-object v3, Ljava/time/Month;->JANUARY:Ljava/time/Month;

    iput-object v3, v2, Ljava/time/bp/zone/TzdbZoneRulesCompiler$TZDBMonthDayTime;->month:Ljava/time/Month;

    .line 1031
    move-object v2, v0

    const/4 v3, 0x1

    iput v3, v2, Ljava/time/bp/zone/TzdbZoneRulesCompiler$TZDBMonthDayTime;->dayOfMonth:I

    .line 1033
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Ljava/time/bp/zone/TzdbZoneRulesCompiler$TZDBMonthDayTime;->adjustForwards:Z

    .line 1037
    move-object v2, v0

    sget-object v3, Ljava/time/LocalTime;->MIDNIGHT:Ljava/time/LocalTime;

    iput-object v3, v2, Ljava/time/bp/zone/TzdbZoneRulesCompiler$TZDBMonthDayTime;->time:Ljava/time/LocalTime;

    .line 1041
    move-object v2, v0

    sget-object v3, Ljava/time/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;->WALL:Ljava/time/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;

    iput-object v3, v2, Ljava/time/bp/zone/TzdbZoneRulesCompiler$TZDBMonthDayTime;->timeDefinition:Ljava/time/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;

    return-void
.end method


# virtual methods
.method adjustToFowards(I)V
    .locals 6

    .prologue
    .line 1044
    move-object v0, p0

    .local v0, "this":Ljava/time/bp/zone/TzdbZoneRulesCompiler$TZDBMonthDayTime;
    move v1, p1

    .local v1, "year":I
    move-object v3, v0

    iget-boolean v3, v3, Ljava/time/bp/zone/TzdbZoneRulesCompiler$TZDBMonthDayTime;->adjustForwards:Z

    if-nez v3, :cond_0

    move-object v3, v0

    iget v3, v3, Ljava/time/bp/zone/TzdbZoneRulesCompiler$TZDBMonthDayTime;->dayOfMonth:I

    if-lez v3, :cond_0

    .line 1045
    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljava/time/bp/zone/TzdbZoneRulesCompiler$TZDBMonthDayTime;->month:Ljava/time/Month;

    move-object v5, v0

    iget v5, v5, Ljava/time/bp/zone/TzdbZoneRulesCompiler$TZDBMonthDayTime;->dayOfMonth:I

    invoke-static {v3, v4, v5}, Ljava/time/LocalDate;->of(ILjava/time/Month;I)Ljava/time/LocalDate;

    move-result-object v3

    const-wide/16 v4, 0x6

    invoke-virtual {v3, v4, v5}, Ljava/time/LocalDate;->minusDays(J)Ljava/time/LocalDate;

    move-result-object v3

    move-object v2, v3

    .line 1046
    .local v2, "adjustedDate":Ljava/time/LocalDate;
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v4}, Ljava/time/LocalDate;->getDayOfMonth()I

    move-result v4

    iput v4, v3, Ljava/time/bp/zone/TzdbZoneRulesCompiler$TZDBMonthDayTime;->dayOfMonth:I

    .line 1047
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v4}, Ljava/time/LocalDate;->getMonth()Ljava/time/Month;

    move-result-object v4

    iput-object v4, v3, Ljava/time/bp/zone/TzdbZoneRulesCompiler$TZDBMonthDayTime;->month:Ljava/time/Month;

    .line 1048
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Ljava/time/bp/zone/TzdbZoneRulesCompiler$TZDBMonthDayTime;->adjustForwards:Z

    .line 1050
    .end local v2    # "adjustedDate":Ljava/time/LocalDate;
    :cond_0
    return-void
.end method

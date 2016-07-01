.class final Ljava/time/bp/zone/TzdbZoneRulesCompiler$TZDBRule;
.super Ljava/time/bp/zone/TzdbZoneRulesCompiler$TZDBMonthDayTime;
.source "TzdbZoneRulesCompiler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/time/bp/zone/TzdbZoneRulesCompiler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "TZDBRule"
.end annotation


# instance fields
.field endYear:I

.field savingsAmount:I

.field startYear:I

.field text:Ljava/lang/String;

.field final synthetic this$0:Ljava/time/bp/zone/TzdbZoneRulesCompiler;


# direct methods
.method constructor <init>(Ljava/time/bp/zone/TzdbZoneRulesCompiler;)V
    .locals 4

    .prologue
    .line 1057
    move-object v0, p0

    .local v0, "this":Ljava/time/bp/zone/TzdbZoneRulesCompiler$TZDBRule;
    move-object v1, p1

    .local v1, "this$0":Ljava/time/bp/zone/TzdbZoneRulesCompiler;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljava/time/bp/zone/TzdbZoneRulesCompiler$TZDBRule;->this$0:Ljava/time/bp/zone/TzdbZoneRulesCompiler;

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljava/time/bp/zone/TzdbZoneRulesCompiler$TZDBMonthDayTime;-><init>(Ljava/time/bp/zone/TzdbZoneRulesCompiler;)V

    return-void
.end method


# virtual methods
.method addToBuilder(Ljava/time/bp/zone/ZoneRulesBuilder;)V
    .locals 12

    .prologue
    .line 1068
    move-object v0, p0

    .local v0, "this":Ljava/time/bp/zone/TzdbZoneRulesCompiler$TZDBRule;
    move-object v1, p1

    .local v1, "bld":Ljava/time/bp/zone/ZoneRulesBuilder;
    move-object v2, v0

    const/16 v3, 0x7d4

    invoke-virtual {v2, v3}, Ljava/time/bp/zone/TzdbZoneRulesCompiler$TZDBRule;->adjustToFowards(I)V

    .line 1069
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Ljava/time/bp/zone/TzdbZoneRulesCompiler$TZDBRule;->startYear:I

    move-object v4, v0

    iget v4, v4, Ljava/time/bp/zone/TzdbZoneRulesCompiler$TZDBRule;->endYear:I

    move-object v5, v0

    iget-object v5, v5, Ljava/time/bp/zone/TzdbZoneRulesCompiler$TZDBRule;->month:Ljava/time/Month;

    move-object v6, v0

    iget v6, v6, Ljava/time/bp/zone/TzdbZoneRulesCompiler$TZDBRule;->dayOfMonth:I

    move-object v7, v0

    iget-object v7, v7, Ljava/time/bp/zone/TzdbZoneRulesCompiler$TZDBRule;->dayOfWeek:Ljava/time/DayOfWeek;

    move-object v8, v0

    iget-object v8, v8, Ljava/time/bp/zone/TzdbZoneRulesCompiler$TZDBRule;->time:Ljava/time/LocalTime;

    move-object v9, v0

    iget-boolean v9, v9, Ljava/time/bp/zone/TzdbZoneRulesCompiler$TZDBRule;->endOfDay:Z

    move-object v10, v0

    iget-object v10, v10, Ljava/time/bp/zone/TzdbZoneRulesCompiler$TZDBRule;->timeDefinition:Ljava/time/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;

    move-object v11, v0

    iget v11, v11, Ljava/time/bp/zone/TzdbZoneRulesCompiler$TZDBRule;->savingsAmount:I

    invoke-virtual/range {v2 .. v11}, Ljava/time/bp/zone/ZoneRulesBuilder;->addRuleToWindow(IILjava/time/Month;ILjava/time/DayOfWeek;Ljava/time/LocalTime;ZLjava/time/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;I)Ljava/time/bp/zone/ZoneRulesBuilder;

    move-result-object v2

    .line 1070
    return-void
.end method

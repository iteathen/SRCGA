.class final Ljava/time/bp/zone/TzdbZoneRulesCompiler$LeapSecondRule;
.super Ljava/lang/Object;
.source "TzdbZoneRulesCompiler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/time/bp/zone/TzdbZoneRulesCompiler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LeapSecondRule"
.end annotation


# instance fields
.field final leapDate:Ljava/time/LocalDate;

.field secondAdjustment:B


# direct methods
.method public constructor <init>(Ljava/time/LocalDate;B)V
    .locals 5

    .prologue
    .line 1145
    move-object v0, p0

    .local v0, "this":Ljava/time/bp/zone/TzdbZoneRulesCompiler$LeapSecondRule;
    move-object v1, p1

    .local v1, "leapDate":Ljava/time/LocalDate;
    move v2, p2

    .local v2, "secondAdjustment":B
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 1146
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljava/time/bp/zone/TzdbZoneRulesCompiler$LeapSecondRule;->leapDate:Ljava/time/LocalDate;

    .line 1147
    move-object v3, v0

    move v4, v2

    iput-byte v4, v3, Ljava/time/bp/zone/TzdbZoneRulesCompiler$LeapSecondRule;->secondAdjustment:B

    .line 1148
    return-void
.end method

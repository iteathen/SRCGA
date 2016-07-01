.class public Ljava/time/bp/zone/ZoneRulesException;
.super Ljava/time/DateTimeException;
.source "ZoneRulesException.java"


# static fields
.field private static final serialVersionUID:J = -0x16a7842e31574fcfL


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Ljava/time/bp/zone/ZoneRulesException;
    move-object v1, p1

    .local v1, "message":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Ljava/time/bp/zone/ZoneRulesException;
    move-object v1, p1

    .local v1, "message":Ljava/lang/String;
    move-object v2, p2

    .local v2, "cause":Ljava/lang/Throwable;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 69
    return-void
.end method

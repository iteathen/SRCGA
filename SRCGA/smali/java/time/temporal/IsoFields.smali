.class public final Ljava/time/temporal/IsoFields;
.super Ljava/lang/Object;
.source "IsoFields.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/time/temporal/IsoFields$Unit;,
        Ljava/time/temporal/IsoFields$Field;
    }
.end annotation


# static fields
.field public static final DAY_OF_QUARTER:Ljava/time/temporal/TemporalField;

.field public static final QUARTER_OF_YEAR:Ljava/time/temporal/TemporalField;

.field public static final QUARTER_YEARS:Ljava/time/temporal/TemporalUnit;

.field public static final WEEK_BASED_YEAR:Ljava/time/temporal/TemporalField;

.field public static final WEEK_BASED_YEARS:Ljava/time/temporal/TemporalUnit;

.field public static final WEEK_OF_WEEK_BASED_YEAR:Ljava/time/temporal/TemporalField;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 142
    sget-object v0, Ljava/time/temporal/IsoFields$Field;->DAY_OF_QUARTER:Ljava/time/temporal/IsoFields$Field;

    sput-object v0, Ljava/time/temporal/IsoFields;->DAY_OF_QUARTER:Ljava/time/temporal/TemporalField;

    .line 153
    sget-object v0, Ljava/time/temporal/IsoFields$Field;->QUARTER_OF_YEAR:Ljava/time/temporal/IsoFields$Field;

    sput-object v0, Ljava/time/temporal/IsoFields;->QUARTER_OF_YEAR:Ljava/time/temporal/TemporalField;

    .line 161
    sget-object v0, Ljava/time/temporal/IsoFields$Field;->WEEK_OF_WEEK_BASED_YEAR:Ljava/time/temporal/IsoFields$Field;

    sput-object v0, Ljava/time/temporal/IsoFields;->WEEK_OF_WEEK_BASED_YEAR:Ljava/time/temporal/TemporalField;

    .line 169
    sget-object v0, Ljava/time/temporal/IsoFields$Field;->WEEK_BASED_YEAR:Ljava/time/temporal/IsoFields$Field;

    sput-object v0, Ljava/time/temporal/IsoFields;->WEEK_BASED_YEAR:Ljava/time/temporal/TemporalField;

    .line 184
    sget-object v0, Ljava/time/temporal/IsoFields$Unit;->WEEK_BASED_YEARS:Ljava/time/temporal/IsoFields$Unit;

    sput-object v0, Ljava/time/temporal/IsoFields;->WEEK_BASED_YEARS:Ljava/time/temporal/TemporalUnit;

    .line 192
    sget-object v0, Ljava/time/temporal/IsoFields$Unit;->QUARTER_YEARS:Ljava/time/temporal/IsoFields$Unit;

    sput-object v0, Ljava/time/temporal/IsoFields;->QUARTER_YEARS:Ljava/time/temporal/TemporalUnit;

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    .prologue
    .line 197
    move-object v0, p0

    .local v0, "this":Ljava/time/temporal/IsoFields;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 198
    new-instance v1, Ljava/lang/AssertionError;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Not instantiable"

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

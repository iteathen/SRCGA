.class public final Ljava/time/temporal/JulianFields;
.super Ljava/lang/Object;
.source "JulianFields.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/time/temporal/JulianFields$Field;
    }
.end annotation


# static fields
.field public static final JULIAN_DAY:Ljava/time/temporal/TemporalField;

.field public static final MODIFIED_JULIAN_DAY:Ljava/time/temporal/TemporalField;

.field public static final RATA_DIE:Ljava/time/temporal/TemporalField;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 97
    sget-object v0, Ljava/time/temporal/JulianFields$Field;->JULIAN_DAY:Ljava/time/temporal/JulianFields$Field;

    sput-object v0, Ljava/time/temporal/JulianFields;->JULIAN_DAY:Ljava/time/temporal/TemporalField;

    .line 132
    sget-object v0, Ljava/time/temporal/JulianFields$Field;->MODIFIED_JULIAN_DAY:Ljava/time/temporal/JulianFields$Field;

    sput-object v0, Ljava/time/temporal/JulianFields;->MODIFIED_JULIAN_DAY:Ljava/time/temporal/TemporalField;

    .line 146
    sget-object v0, Ljava/time/temporal/JulianFields$Field;->RATA_DIE:Ljava/time/temporal/JulianFields$Field;

    sput-object v0, Ljava/time/temporal/JulianFields;->RATA_DIE:Ljava/time/temporal/TemporalField;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Ljava/time/temporal/JulianFields;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

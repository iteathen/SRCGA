.class synthetic Ljava/time/bp/zone/ZoneOffsetTransitionRule$1;
.super Ljava/lang/Object;
.source "ZoneOffsetTransitionRule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/time/bp/zone/ZoneOffsetTransitionRule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$java$time$bp$zone$ZoneOffsetTransitionRule$TimeDefinition:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 529
    invoke-static {}, Ljava/time/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;->values()[Ljava/time/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [I

    sput-object v1, Ljava/time/bp/zone/ZoneOffsetTransitionRule$1;->$SwitchMap$java$time$bp$zone$ZoneOffsetTransitionRule$TimeDefinition:[I

    :try_start_0
    sget-object v1, Ljava/time/bp/zone/ZoneOffsetTransitionRule$1;->$SwitchMap$java$time$bp$zone$ZoneOffsetTransitionRule$TimeDefinition:[I

    sget-object v2, Ljava/time/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;->UTC:Ljava/time/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;

    invoke-virtual {v2}, Ljava/time/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;->ordinal()I

    move-result v2

    const/4 v3, 0x1

    aput v3, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    sget-object v1, Ljava/time/bp/zone/ZoneOffsetTransitionRule$1;->$SwitchMap$java$time$bp$zone$ZoneOffsetTransitionRule$TimeDefinition:[I

    sget-object v2, Ljava/time/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;->STANDARD:Ljava/time/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;

    invoke-virtual {v2}, Ljava/time/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;->ordinal()I

    move-result v2

    const/4 v3, 0x2

    aput v3, v1, v2
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return-void

    :catch_0
    move-exception v1

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v0, v1

    goto :goto_1
.end method

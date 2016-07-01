.class Ljavafx/scene/control/SpinnerValueFactory$LocalTimeSpinnerValueFactory$1;
.super Ljavafx/util/StringConverter;
.source "SpinnerValueFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/control/SpinnerValueFactory$LocalTimeSpinnerValueFactory;-><init>(Ljava/time/LocalTime;Ljava/time/LocalTime;Ljava/time/LocalTime;JLjava/time/temporal/TemporalUnit;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/util/StringConverter",
        "<",
        "Ljava/time/LocalTime;",
        ">;"
    }
.end annotation


# instance fields
.field private dtf:Ljava/time/format/DateTimeFormatter;

.field final synthetic this$0:Ljavafx/scene/control/SpinnerValueFactory$LocalTimeSpinnerValueFactory;


# direct methods
.method constructor <init>(Ljavafx/scene/control/SpinnerValueFactory$LocalTimeSpinnerValueFactory;)V
    .locals 4

    .prologue
    .line 1187
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SpinnerValueFactory$LocalTimeSpinnerValueFactory$1;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/SpinnerValueFactory$LocalTimeSpinnerValueFactory;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/SpinnerValueFactory$LocalTimeSpinnerValueFactory$1;->this$0:Ljavafx/scene/control/SpinnerValueFactory$LocalTimeSpinnerValueFactory;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/util/StringConverter;-><init>()V

    .line 1188
    move-object v2, v0

    sget-object v3, Ljava/time/format/FormatStyle;->SHORT:Ljava/time/format/FormatStyle;

    invoke-static {v3}, Ljava/time/format/DateTimeFormatter;->ofLocalizedTime(Ljava/time/format/FormatStyle;)Ljava/time/format/DateTimeFormatter;

    move-result-object v3

    iput-object v3, v2, Ljavafx/scene/control/SpinnerValueFactory$LocalTimeSpinnerValueFactory$1;->dtf:Ljava/time/format/DateTimeFormatter;

    return-void
.end method


# virtual methods
.method public bridge synthetic fromString(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 1187
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SpinnerValueFactory$LocalTimeSpinnerValueFactory$1;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/SpinnerValueFactory$LocalTimeSpinnerValueFactory$1;->fromString(Ljava/lang/String;)Ljava/time/LocalTime;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/SpinnerValueFactory$LocalTimeSpinnerValueFactory$1;
    return-object v0
.end method

.method public fromString(Ljava/lang/String;)Ljava/time/LocalTime;
    .locals 3

    .prologue
    .line 1198
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SpinnerValueFactory$LocalTimeSpinnerValueFactory$1;
    move-object v1, p1

    .local v1, "string":Ljava/lang/String;
    move-object v2, v1

    invoke-static {v2}, Ljava/time/LocalTime;->parse(Ljava/lang/CharSequence;)Ljava/time/LocalTime;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/SpinnerValueFactory$LocalTimeSpinnerValueFactory$1;
    return-object v0
.end method

.method public bridge synthetic toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 1187
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SpinnerValueFactory$LocalTimeSpinnerValueFactory$1;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljava/time/LocalTime;

    invoke-virtual {v2, v3}, Ljavafx/scene/control/SpinnerValueFactory$LocalTimeSpinnerValueFactory$1;->toString(Ljava/time/LocalTime;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/SpinnerValueFactory$LocalTimeSpinnerValueFactory$1;
    return-object v0
.end method

.method public toString(Ljava/time/LocalTime;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 1191
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SpinnerValueFactory$LocalTimeSpinnerValueFactory$1;
    move-object v1, p1

    .local v1, "localTime":Ljava/time/LocalTime;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 1192
    const-string v2, ""

    move-object v0, v2

    .line 1194
    .end local v0    # "this":Ljavafx/scene/control/SpinnerValueFactory$LocalTimeSpinnerValueFactory$1;
    :goto_0
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/SpinnerValueFactory$LocalTimeSpinnerValueFactory$1;
    :cond_0
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/SpinnerValueFactory$LocalTimeSpinnerValueFactory$1;->dtf:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v2, v3}, Ljava/time/LocalTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

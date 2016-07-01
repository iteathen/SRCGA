.class synthetic Ljavafx/scene/input/KeyCodeCombination$1;
.super Ljava/lang/Object;
.source "KeyCodeCombination.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/input/KeyCodeCombination;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$javafx$scene$input$KeyCode:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 223
    invoke-static {}, Ljavafx/scene/input/KeyCode;->values()[Ljavafx/scene/input/KeyCode;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [I

    sput-object v1, Ljavafx/scene/input/KeyCodeCombination$1;->$SwitchMap$javafx$scene$input$KeyCode:[I

    :try_start_0
    sget-object v1, Ljavafx/scene/input/KeyCodeCombination$1;->$SwitchMap$javafx$scene$input$KeyCode:[I

    sget-object v2, Ljavafx/scene/input/KeyCode;->ENTER:Ljavafx/scene/input/KeyCode;

    invoke-virtual {v2}, Ljavafx/scene/input/KeyCode;->ordinal()I

    move-result v2

    const/4 v3, 0x1

    aput v3, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    sget-object v1, Ljavafx/scene/input/KeyCodeCombination$1;->$SwitchMap$javafx$scene$input$KeyCode:[I

    sget-object v2, Ljavafx/scene/input/KeyCode;->LEFT:Ljavafx/scene/input/KeyCode;

    invoke-virtual {v2}, Ljavafx/scene/input/KeyCode;->ordinal()I

    move-result v2

    const/4 v3, 0x2

    aput v3, v1, v2
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Ljavafx/scene/input/KeyCodeCombination$1;->$SwitchMap$javafx$scene$input$KeyCode:[I

    sget-object v2, Ljavafx/scene/input/KeyCode;->UP:Ljavafx/scene/input/KeyCode;

    invoke-virtual {v2}, Ljavafx/scene/input/KeyCode;->ordinal()I

    move-result v2

    const/4 v3, 0x3

    aput v3, v1, v2
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    sget-object v1, Ljavafx/scene/input/KeyCodeCombination$1;->$SwitchMap$javafx$scene$input$KeyCode:[I

    sget-object v2, Ljavafx/scene/input/KeyCode;->RIGHT:Ljavafx/scene/input/KeyCode;

    invoke-virtual {v2}, Ljavafx/scene/input/KeyCode;->ordinal()I

    move-result v2

    const/4 v3, 0x4

    aput v3, v1, v2
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    :try_start_4
    sget-object v1, Ljavafx/scene/input/KeyCodeCombination$1;->$SwitchMap$javafx$scene$input$KeyCode:[I

    sget-object v2, Ljavafx/scene/input/KeyCode;->DOWN:Ljavafx/scene/input/KeyCode;

    invoke-virtual {v2}, Ljavafx/scene/input/KeyCode;->ordinal()I

    move-result v2

    const/4 v3, 0x5

    aput v3, v1, v2
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :goto_4
    :try_start_5
    sget-object v1, Ljavafx/scene/input/KeyCodeCombination$1;->$SwitchMap$javafx$scene$input$KeyCode:[I

    sget-object v2, Ljavafx/scene/input/KeyCode;->COMMA:Ljavafx/scene/input/KeyCode;

    invoke-virtual {v2}, Ljavafx/scene/input/KeyCode;->ordinal()I

    move-result v2

    const/4 v3, 0x6

    aput v3, v1, v2
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :goto_5
    :try_start_6
    sget-object v1, Ljavafx/scene/input/KeyCodeCombination$1;->$SwitchMap$javafx$scene$input$KeyCode:[I

    sget-object v2, Ljavafx/scene/input/KeyCode;->MINUS:Ljavafx/scene/input/KeyCode;

    invoke-virtual {v2}, Ljavafx/scene/input/KeyCode;->ordinal()I

    move-result v2

    const/4 v3, 0x7

    aput v3, v1, v2
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :goto_6
    :try_start_7
    sget-object v1, Ljavafx/scene/input/KeyCodeCombination$1;->$SwitchMap$javafx$scene$input$KeyCode:[I

    sget-object v2, Ljavafx/scene/input/KeyCode;->PERIOD:Ljavafx/scene/input/KeyCode;

    invoke-virtual {v2}, Ljavafx/scene/input/KeyCode;->ordinal()I

    move-result v2

    const/16 v3, 0x8

    aput v3, v1, v2
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :goto_7
    :try_start_8
    sget-object v1, Ljavafx/scene/input/KeyCodeCombination$1;->$SwitchMap$javafx$scene$input$KeyCode:[I

    sget-object v2, Ljavafx/scene/input/KeyCode;->SLASH:Ljavafx/scene/input/KeyCode;

    invoke-virtual {v2}, Ljavafx/scene/input/KeyCode;->ordinal()I

    move-result v2

    const/16 v3, 0x9

    aput v3, v1, v2
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :goto_8
    :try_start_9
    sget-object v1, Ljavafx/scene/input/KeyCodeCombination$1;->$SwitchMap$javafx$scene$input$KeyCode:[I

    sget-object v2, Ljavafx/scene/input/KeyCode;->SEMICOLON:Ljavafx/scene/input/KeyCode;

    invoke-virtual {v2}, Ljavafx/scene/input/KeyCode;->ordinal()I

    move-result v2

    const/16 v3, 0xa

    aput v3, v1, v2
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :goto_9
    :try_start_a
    sget-object v1, Ljavafx/scene/input/KeyCodeCombination$1;->$SwitchMap$javafx$scene$input$KeyCode:[I

    sget-object v2, Ljavafx/scene/input/KeyCode;->EQUALS:Ljavafx/scene/input/KeyCode;

    invoke-virtual {v2}, Ljavafx/scene/input/KeyCode;->ordinal()I

    move-result v2

    const/16 v3, 0xb

    aput v3, v1, v2
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :goto_a
    :try_start_b
    sget-object v1, Ljavafx/scene/input/KeyCodeCombination$1;->$SwitchMap$javafx$scene$input$KeyCode:[I

    sget-object v2, Ljavafx/scene/input/KeyCode;->OPEN_BRACKET:Ljavafx/scene/input/KeyCode;

    invoke-virtual {v2}, Ljavafx/scene/input/KeyCode;->ordinal()I

    move-result v2

    const/16 v3, 0xc

    aput v3, v1, v2
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :goto_b
    :try_start_c
    sget-object v1, Ljavafx/scene/input/KeyCodeCombination$1;->$SwitchMap$javafx$scene$input$KeyCode:[I

    sget-object v2, Ljavafx/scene/input/KeyCode;->BACK_SLASH:Ljavafx/scene/input/KeyCode;

    invoke-virtual {v2}, Ljavafx/scene/input/KeyCode;->ordinal()I

    move-result v2

    const/16 v3, 0xd

    aput v3, v1, v2
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :goto_c
    :try_start_d
    sget-object v1, Ljavafx/scene/input/KeyCodeCombination$1;->$SwitchMap$javafx$scene$input$KeyCode:[I

    sget-object v2, Ljavafx/scene/input/KeyCode;->CLOSE_BRACKET:Ljavafx/scene/input/KeyCode;

    invoke-virtual {v2}, Ljavafx/scene/input/KeyCode;->ordinal()I

    move-result v2

    const/16 v3, 0xe

    aput v3, v1, v2
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :goto_d
    :try_start_e
    sget-object v1, Ljavafx/scene/input/KeyCodeCombination$1;->$SwitchMap$javafx$scene$input$KeyCode:[I

    sget-object v2, Ljavafx/scene/input/KeyCode;->MULTIPLY:Ljavafx/scene/input/KeyCode;

    invoke-virtual {v2}, Ljavafx/scene/input/KeyCode;->ordinal()I

    move-result v2

    const/16 v3, 0xf

    aput v3, v1, v2
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :goto_e
    :try_start_f
    sget-object v1, Ljavafx/scene/input/KeyCodeCombination$1;->$SwitchMap$javafx$scene$input$KeyCode:[I

    sget-object v2, Ljavafx/scene/input/KeyCode;->ADD:Ljavafx/scene/input/KeyCode;

    invoke-virtual {v2}, Ljavafx/scene/input/KeyCode;->ordinal()I

    move-result v2

    const/16 v3, 0x10

    aput v3, v1, v2
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :goto_f
    :try_start_10
    sget-object v1, Ljavafx/scene/input/KeyCodeCombination$1;->$SwitchMap$javafx$scene$input$KeyCode:[I

    sget-object v2, Ljavafx/scene/input/KeyCode;->SUBTRACT:Ljavafx/scene/input/KeyCode;

    invoke-virtual {v2}, Ljavafx/scene/input/KeyCode;->ordinal()I

    move-result v2

    const/16 v3, 0x11

    aput v3, v1, v2
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    :goto_10
    :try_start_11
    sget-object v1, Ljavafx/scene/input/KeyCodeCombination$1;->$SwitchMap$javafx$scene$input$KeyCode:[I

    sget-object v2, Ljavafx/scene/input/KeyCode;->DECIMAL:Ljavafx/scene/input/KeyCode;

    invoke-virtual {v2}, Ljavafx/scene/input/KeyCode;->ordinal()I

    move-result v2

    const/16 v3, 0x12

    aput v3, v1, v2
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    :goto_11
    :try_start_12
    sget-object v1, Ljavafx/scene/input/KeyCodeCombination$1;->$SwitchMap$javafx$scene$input$KeyCode:[I

    sget-object v2, Ljavafx/scene/input/KeyCode;->DIVIDE:Ljavafx/scene/input/KeyCode;

    invoke-virtual {v2}, Ljavafx/scene/input/KeyCode;->ordinal()I

    move-result v2

    const/16 v3, 0x13

    aput v3, v1, v2
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    :goto_12
    :try_start_13
    sget-object v1, Ljavafx/scene/input/KeyCodeCombination$1;->$SwitchMap$javafx$scene$input$KeyCode:[I

    sget-object v2, Ljavafx/scene/input/KeyCode;->BACK_QUOTE:Ljavafx/scene/input/KeyCode;

    invoke-virtual {v2}, Ljavafx/scene/input/KeyCode;->ordinal()I

    move-result v2

    const/16 v3, 0x14

    aput v3, v1, v2
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    :goto_13
    :try_start_14
    sget-object v1, Ljavafx/scene/input/KeyCodeCombination$1;->$SwitchMap$javafx$scene$input$KeyCode:[I

    sget-object v2, Ljavafx/scene/input/KeyCode;->QUOTE:Ljavafx/scene/input/KeyCode;

    invoke-virtual {v2}, Ljavafx/scene/input/KeyCode;->ordinal()I

    move-result v2

    const/16 v3, 0x15

    aput v3, v1, v2
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_14

    :goto_14
    :try_start_15
    sget-object v1, Ljavafx/scene/input/KeyCodeCombination$1;->$SwitchMap$javafx$scene$input$KeyCode:[I

    sget-object v2, Ljavafx/scene/input/KeyCode;->AMPERSAND:Ljavafx/scene/input/KeyCode;

    invoke-virtual {v2}, Ljavafx/scene/input/KeyCode;->ordinal()I

    move-result v2

    const/16 v3, 0x16

    aput v3, v1, v2
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_15

    :goto_15
    :try_start_16
    sget-object v1, Ljavafx/scene/input/KeyCodeCombination$1;->$SwitchMap$javafx$scene$input$KeyCode:[I

    sget-object v2, Ljavafx/scene/input/KeyCode;->ASTERISK:Ljavafx/scene/input/KeyCode;

    invoke-virtual {v2}, Ljavafx/scene/input/KeyCode;->ordinal()I

    move-result v2

    const/16 v3, 0x17

    aput v3, v1, v2
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_16

    :goto_16
    :try_start_17
    sget-object v1, Ljavafx/scene/input/KeyCodeCombination$1;->$SwitchMap$javafx$scene$input$KeyCode:[I

    sget-object v2, Ljavafx/scene/input/KeyCode;->LESS:Ljavafx/scene/input/KeyCode;

    invoke-virtual {v2}, Ljavafx/scene/input/KeyCode;->ordinal()I

    move-result v2

    const/16 v3, 0x18

    aput v3, v1, v2
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_17

    :goto_17
    :try_start_18
    sget-object v1, Ljavafx/scene/input/KeyCodeCombination$1;->$SwitchMap$javafx$scene$input$KeyCode:[I

    sget-object v2, Ljavafx/scene/input/KeyCode;->GREATER:Ljavafx/scene/input/KeyCode;

    invoke-virtual {v2}, Ljavafx/scene/input/KeyCode;->ordinal()I

    move-result v2

    const/16 v3, 0x19

    aput v3, v1, v2
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_18

    :goto_18
    :try_start_19
    sget-object v1, Ljavafx/scene/input/KeyCodeCombination$1;->$SwitchMap$javafx$scene$input$KeyCode:[I

    sget-object v2, Ljavafx/scene/input/KeyCode;->BRACELEFT:Ljavafx/scene/input/KeyCode;

    invoke-virtual {v2}, Ljavafx/scene/input/KeyCode;->ordinal()I

    move-result v2

    const/16 v3, 0x1a

    aput v3, v1, v2
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_19

    :goto_19
    :try_start_1a
    sget-object v1, Ljavafx/scene/input/KeyCodeCombination$1;->$SwitchMap$javafx$scene$input$KeyCode:[I

    sget-object v2, Ljavafx/scene/input/KeyCode;->BRACERIGHT:Ljavafx/scene/input/KeyCode;

    invoke-virtual {v2}, Ljavafx/scene/input/KeyCode;->ordinal()I

    move-result v2

    const/16 v3, 0x1b

    aput v3, v1, v2
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_1a

    :goto_1a
    :try_start_1b
    sget-object v1, Ljavafx/scene/input/KeyCodeCombination$1;->$SwitchMap$javafx$scene$input$KeyCode:[I

    sget-object v2, Ljavafx/scene/input/KeyCode;->AT:Ljavafx/scene/input/KeyCode;

    invoke-virtual {v2}, Ljavafx/scene/input/KeyCode;->ordinal()I

    move-result v2

    const/16 v3, 0x1c

    aput v3, v1, v2
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_1b

    :goto_1b
    :try_start_1c
    sget-object v1, Ljavafx/scene/input/KeyCodeCombination$1;->$SwitchMap$javafx$scene$input$KeyCode:[I

    sget-object v2, Ljavafx/scene/input/KeyCode;->COLON:Ljavafx/scene/input/KeyCode;

    invoke-virtual {v2}, Ljavafx/scene/input/KeyCode;->ordinal()I

    move-result v2

    const/16 v3, 0x1d

    aput v3, v1, v2
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_1c

    :goto_1c
    :try_start_1d
    sget-object v1, Ljavafx/scene/input/KeyCodeCombination$1;->$SwitchMap$javafx$scene$input$KeyCode:[I

    sget-object v2, Ljavafx/scene/input/KeyCode;->CIRCUMFLEX:Ljavafx/scene/input/KeyCode;

    invoke-virtual {v2}, Ljavafx/scene/input/KeyCode;->ordinal()I

    move-result v2

    const/16 v3, 0x1e

    aput v3, v1, v2
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_1d

    :goto_1d
    :try_start_1e
    sget-object v1, Ljavafx/scene/input/KeyCodeCombination$1;->$SwitchMap$javafx$scene$input$KeyCode:[I

    sget-object v2, Ljavafx/scene/input/KeyCode;->DOLLAR:Ljavafx/scene/input/KeyCode;

    invoke-virtual {v2}, Ljavafx/scene/input/KeyCode;->ordinal()I

    move-result v2

    const/16 v3, 0x1f

    aput v3, v1, v2
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_1e

    :goto_1e
    :try_start_1f
    sget-object v1, Ljavafx/scene/input/KeyCodeCombination$1;->$SwitchMap$javafx$scene$input$KeyCode:[I

    sget-object v2, Ljavafx/scene/input/KeyCode;->EURO_SIGN:Ljavafx/scene/input/KeyCode;

    invoke-virtual {v2}, Ljavafx/scene/input/KeyCode;->ordinal()I

    move-result v2

    const/16 v3, 0x20

    aput v3, v1, v2
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_1f

    :goto_1f
    :try_start_20
    sget-object v1, Ljavafx/scene/input/KeyCodeCombination$1;->$SwitchMap$javafx$scene$input$KeyCode:[I

    sget-object v2, Ljavafx/scene/input/KeyCode;->EXCLAMATION_MARK:Ljavafx/scene/input/KeyCode;

    invoke-virtual {v2}, Ljavafx/scene/input/KeyCode;->ordinal()I

    move-result v2

    const/16 v3, 0x21

    aput v3, v1, v2
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_20} :catch_20

    :goto_20
    :try_start_21
    sget-object v1, Ljavafx/scene/input/KeyCodeCombination$1;->$SwitchMap$javafx$scene$input$KeyCode:[I

    sget-object v2, Ljavafx/scene/input/KeyCode;->LEFT_PARENTHESIS:Ljavafx/scene/input/KeyCode;

    invoke-virtual {v2}, Ljavafx/scene/input/KeyCode;->ordinal()I

    move-result v2

    const/16 v3, 0x22

    aput v3, v1, v2
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_21} :catch_21

    :goto_21
    :try_start_22
    sget-object v1, Ljavafx/scene/input/KeyCodeCombination$1;->$SwitchMap$javafx$scene$input$KeyCode:[I

    sget-object v2, Ljavafx/scene/input/KeyCode;->NUMBER_SIGN:Ljavafx/scene/input/KeyCode;

    invoke-virtual {v2}, Ljavafx/scene/input/KeyCode;->ordinal()I

    move-result v2

    const/16 v3, 0x23

    aput v3, v1, v2
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_22} :catch_22

    :goto_22
    :try_start_23
    sget-object v1, Ljavafx/scene/input/KeyCodeCombination$1;->$SwitchMap$javafx$scene$input$KeyCode:[I

    sget-object v2, Ljavafx/scene/input/KeyCode;->PLUS:Ljavafx/scene/input/KeyCode;

    invoke-virtual {v2}, Ljavafx/scene/input/KeyCode;->ordinal()I

    move-result v2

    const/16 v3, 0x24

    aput v3, v1, v2
    :try_end_23
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_23} :catch_23

    :goto_23
    :try_start_24
    sget-object v1, Ljavafx/scene/input/KeyCodeCombination$1;->$SwitchMap$javafx$scene$input$KeyCode:[I

    sget-object v2, Ljavafx/scene/input/KeyCode;->RIGHT_PARENTHESIS:Ljavafx/scene/input/KeyCode;

    invoke-virtual {v2}, Ljavafx/scene/input/KeyCode;->ordinal()I

    move-result v2

    const/16 v3, 0x25

    aput v3, v1, v2
    :try_end_24
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24 .. :try_end_24} :catch_24

    :goto_24
    :try_start_25
    sget-object v1, Ljavafx/scene/input/KeyCodeCombination$1;->$SwitchMap$javafx$scene$input$KeyCode:[I

    sget-object v2, Ljavafx/scene/input/KeyCode;->UNDERSCORE:Ljavafx/scene/input/KeyCode;

    invoke-virtual {v2}, Ljavafx/scene/input/KeyCode;->ordinal()I

    move-result v2

    const/16 v3, 0x26

    aput v3, v1, v2
    :try_end_25
    .catch Ljava/lang/NoSuchFieldError; {:try_start_25 .. :try_end_25} :catch_25

    :goto_25
    :try_start_26
    sget-object v1, Ljavafx/scene/input/KeyCodeCombination$1;->$SwitchMap$javafx$scene$input$KeyCode:[I

    sget-object v2, Ljavafx/scene/input/KeyCode;->DIGIT0:Ljavafx/scene/input/KeyCode;

    invoke-virtual {v2}, Ljavafx/scene/input/KeyCode;->ordinal()I

    move-result v2

    const/16 v3, 0x27

    aput v3, v1, v2
    :try_end_26
    .catch Ljava/lang/NoSuchFieldError; {:try_start_26 .. :try_end_26} :catch_26

    :goto_26
    :try_start_27
    sget-object v1, Ljavafx/scene/input/KeyCodeCombination$1;->$SwitchMap$javafx$scene$input$KeyCode:[I

    sget-object v2, Ljavafx/scene/input/KeyCode;->DIGIT1:Ljavafx/scene/input/KeyCode;

    invoke-virtual {v2}, Ljavafx/scene/input/KeyCode;->ordinal()I

    move-result v2

    const/16 v3, 0x28

    aput v3, v1, v2
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_27} :catch_27

    :goto_27
    :try_start_28
    sget-object v1, Ljavafx/scene/input/KeyCodeCombination$1;->$SwitchMap$javafx$scene$input$KeyCode:[I

    sget-object v2, Ljavafx/scene/input/KeyCode;->DIGIT2:Ljavafx/scene/input/KeyCode;

    invoke-virtual {v2}, Ljavafx/scene/input/KeyCode;->ordinal()I

    move-result v2

    const/16 v3, 0x29

    aput v3, v1, v2
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_28} :catch_28

    :goto_28
    :try_start_29
    sget-object v1, Ljavafx/scene/input/KeyCodeCombination$1;->$SwitchMap$javafx$scene$input$KeyCode:[I

    sget-object v2, Ljavafx/scene/input/KeyCode;->DIGIT3:Ljavafx/scene/input/KeyCode;

    invoke-virtual {v2}, Ljavafx/scene/input/KeyCode;->ordinal()I

    move-result v2

    const/16 v3, 0x2a

    aput v3, v1, v2
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_29} :catch_29

    :goto_29
    :try_start_2a
    sget-object v1, Ljavafx/scene/input/KeyCodeCombination$1;->$SwitchMap$javafx$scene$input$KeyCode:[I

    sget-object v2, Ljavafx/scene/input/KeyCode;->DIGIT4:Ljavafx/scene/input/KeyCode;

    invoke-virtual {v2}, Ljavafx/scene/input/KeyCode;->ordinal()I

    move-result v2

    const/16 v3, 0x2b

    aput v3, v1, v2
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_2a} :catch_2a

    :goto_2a
    :try_start_2b
    sget-object v1, Ljavafx/scene/input/KeyCodeCombination$1;->$SwitchMap$javafx$scene$input$KeyCode:[I

    sget-object v2, Ljavafx/scene/input/KeyCode;->DIGIT5:Ljavafx/scene/input/KeyCode;

    invoke-virtual {v2}, Ljavafx/scene/input/KeyCode;->ordinal()I

    move-result v2

    const/16 v3, 0x2c

    aput v3, v1, v2
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_2b} :catch_2b

    :goto_2b
    :try_start_2c
    sget-object v1, Ljavafx/scene/input/KeyCodeCombination$1;->$SwitchMap$javafx$scene$input$KeyCode:[I

    sget-object v2, Ljavafx/scene/input/KeyCode;->DIGIT6:Ljavafx/scene/input/KeyCode;

    invoke-virtual {v2}, Ljavafx/scene/input/KeyCode;->ordinal()I

    move-result v2

    const/16 v3, 0x2d

    aput v3, v1, v2
    :try_end_2c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2c .. :try_end_2c} :catch_2c

    :goto_2c
    :try_start_2d
    sget-object v1, Ljavafx/scene/input/KeyCodeCombination$1;->$SwitchMap$javafx$scene$input$KeyCode:[I

    sget-object v2, Ljavafx/scene/input/KeyCode;->DIGIT7:Ljavafx/scene/input/KeyCode;

    invoke-virtual {v2}, Ljavafx/scene/input/KeyCode;->ordinal()I

    move-result v2

    const/16 v3, 0x2e

    aput v3, v1, v2
    :try_end_2d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2d .. :try_end_2d} :catch_2d

    :goto_2d
    :try_start_2e
    sget-object v1, Ljavafx/scene/input/KeyCodeCombination$1;->$SwitchMap$javafx$scene$input$KeyCode:[I

    sget-object v2, Ljavafx/scene/input/KeyCode;->DIGIT8:Ljavafx/scene/input/KeyCode;

    invoke-virtual {v2}, Ljavafx/scene/input/KeyCode;->ordinal()I

    move-result v2

    const/16 v3, 0x2f

    aput v3, v1, v2
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e .. :try_end_2e} :catch_2e

    :goto_2e
    :try_start_2f
    sget-object v1, Ljavafx/scene/input/KeyCodeCombination$1;->$SwitchMap$javafx$scene$input$KeyCode:[I

    sget-object v2, Ljavafx/scene/input/KeyCode;->DIGIT9:Ljavafx/scene/input/KeyCode;

    invoke-virtual {v2}, Ljavafx/scene/input/KeyCode;->ordinal()I

    move-result v2

    const/16 v3, 0x30

    aput v3, v1, v2
    :try_end_2f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2f .. :try_end_2f} :catch_2f

    :goto_2f
    :try_start_30
    sget-object v1, Ljavafx/scene/input/KeyCodeCombination$1;->$SwitchMap$javafx$scene$input$KeyCode:[I

    sget-object v2, Ljavafx/scene/input/KeyCode;->BACK_SPACE:Ljavafx/scene/input/KeyCode;

    invoke-virtual {v2}, Ljavafx/scene/input/KeyCode;->ordinal()I

    move-result v2

    const/16 v3, 0x31

    aput v3, v1, v2
    :try_end_30
    .catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_30} :catch_30

    :goto_30
    :try_start_31
    sget-object v1, Ljavafx/scene/input/KeyCodeCombination$1;->$SwitchMap$javafx$scene$input$KeyCode:[I

    sget-object v2, Ljavafx/scene/input/KeyCode;->ESCAPE:Ljavafx/scene/input/KeyCode;

    invoke-virtual {v2}, Ljavafx/scene/input/KeyCode;->ordinal()I

    move-result v2

    const/16 v3, 0x32

    aput v3, v1, v2
    :try_end_31
    .catch Ljava/lang/NoSuchFieldError; {:try_start_31 .. :try_end_31} :catch_31

    :goto_31
    :try_start_32
    sget-object v1, Ljavafx/scene/input/KeyCodeCombination$1;->$SwitchMap$javafx$scene$input$KeyCode:[I

    sget-object v2, Ljavafx/scene/input/KeyCode;->DELETE:Ljavafx/scene/input/KeyCode;

    invoke-virtual {v2}, Ljavafx/scene/input/KeyCode;->ordinal()I

    move-result v2

    const/16 v3, 0x33

    aput v3, v1, v2
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_32 .. :try_end_32} :catch_32

    :goto_32
    return-void

    :catch_0
    move-exception v1

    move-object v0, v1

    goto/16 :goto_0

    :catch_1
    move-exception v1

    move-object v0, v1

    goto/16 :goto_1

    :catch_2
    move-exception v1

    move-object v0, v1

    goto/16 :goto_2

    :catch_3
    move-exception v1

    move-object v0, v1

    goto/16 :goto_3

    :catch_4
    move-exception v1

    move-object v0, v1

    goto/16 :goto_4

    :catch_5
    move-exception v1

    move-object v0, v1

    goto/16 :goto_5

    :catch_6
    move-exception v1

    move-object v0, v1

    goto/16 :goto_6

    :catch_7
    move-exception v1

    move-object v0, v1

    goto/16 :goto_7

    :catch_8
    move-exception v1

    move-object v0, v1

    goto/16 :goto_8

    :catch_9
    move-exception v1

    move-object v0, v1

    goto/16 :goto_9

    :catch_a
    move-exception v1

    move-object v0, v1

    goto/16 :goto_a

    :catch_b
    move-exception v1

    move-object v0, v1

    goto/16 :goto_b

    :catch_c
    move-exception v1

    move-object v0, v1

    goto/16 :goto_c

    :catch_d
    move-exception v1

    move-object v0, v1

    goto/16 :goto_d

    :catch_e
    move-exception v1

    move-object v0, v1

    goto/16 :goto_e

    :catch_f
    move-exception v1

    move-object v0, v1

    goto/16 :goto_f

    :catch_10
    move-exception v1

    move-object v0, v1

    goto/16 :goto_10

    :catch_11
    move-exception v1

    move-object v0, v1

    goto/16 :goto_11

    :catch_12
    move-exception v1

    move-object v0, v1

    goto/16 :goto_12

    :catch_13
    move-exception v1

    move-object v0, v1

    goto/16 :goto_13

    :catch_14
    move-exception v1

    move-object v0, v1

    goto/16 :goto_14

    :catch_15
    move-exception v1

    move-object v0, v1

    goto/16 :goto_15

    :catch_16
    move-exception v1

    move-object v0, v1

    goto/16 :goto_16

    :catch_17
    move-exception v1

    move-object v0, v1

    goto/16 :goto_17

    :catch_18
    move-exception v1

    move-object v0, v1

    goto/16 :goto_18

    :catch_19
    move-exception v1

    move-object v0, v1

    goto/16 :goto_19

    :catch_1a
    move-exception v1

    move-object v0, v1

    goto/16 :goto_1a

    :catch_1b
    move-exception v1

    move-object v0, v1

    goto/16 :goto_1b

    :catch_1c
    move-exception v1

    move-object v0, v1

    goto/16 :goto_1c

    :catch_1d
    move-exception v1

    move-object v0, v1

    goto/16 :goto_1d

    :catch_1e
    move-exception v1

    move-object v0, v1

    goto/16 :goto_1e

    :catch_1f
    move-exception v1

    move-object v0, v1

    goto/16 :goto_1f

    :catch_20
    move-exception v1

    move-object v0, v1

    goto/16 :goto_20

    :catch_21
    move-exception v1

    move-object v0, v1

    goto/16 :goto_21

    :catch_22
    move-exception v1

    move-object v0, v1

    goto/16 :goto_22

    :catch_23
    move-exception v1

    move-object v0, v1

    goto/16 :goto_23

    :catch_24
    move-exception v1

    move-object v0, v1

    goto/16 :goto_24

    :catch_25
    move-exception v1

    move-object v0, v1

    goto/16 :goto_25

    :catch_26
    move-exception v1

    move-object v0, v1

    goto/16 :goto_26

    :catch_27
    move-exception v1

    move-object v0, v1

    goto/16 :goto_27

    :catch_28
    move-exception v1

    move-object v0, v1

    goto/16 :goto_28

    :catch_29
    move-exception v1

    move-object v0, v1

    goto/16 :goto_29

    :catch_2a
    move-exception v1

    move-object v0, v1

    goto/16 :goto_2a

    :catch_2b
    move-exception v1

    move-object v0, v1

    goto/16 :goto_2b

    :catch_2c
    move-exception v1

    move-object v0, v1

    goto/16 :goto_2c

    :catch_2d
    move-exception v1

    move-object v0, v1

    goto/16 :goto_2d

    :catch_2e
    move-exception v1

    move-object v0, v1

    goto/16 :goto_2e

    :catch_2f
    move-exception v1

    move-object v0, v1

    goto/16 :goto_2f

    :catch_30
    move-exception v1

    move-object v0, v1

    goto/16 :goto_30

    :catch_31
    move-exception v1

    move-object v0, v1

    goto/16 :goto_31

    :catch_32
    move-exception v1

    move-object v0, v1

    goto/16 :goto_32
.end method

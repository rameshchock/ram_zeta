view: family {
  sql_table_name: Rfam.family ;;

  dimension: author {
    type: string
    sql: ${TABLE}.author ;;
  }

  dimension: auto_wiki {
    type: number
    sql: ${TABLE}.auto_wiki ;;
  }

  dimension: clen {
    type: number
    sql: ${TABLE}.clen ;;
  }

  dimension: cmbuild {
    type: string
    sql: ${TABLE}.cmbuild ;;
  }

  dimension: cmcalibrate {
    type: string
    sql: ${TABLE}.cmcalibrate ;;
  }

  dimension: cmsearch {
    type: string
    sql: ${TABLE}.cmsearch ;;
  }

  dimension: comment {
    type: string
    sql: ${TABLE}.comment ;;
  }

  dimension_group: created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.created ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: ecmli_cal_db {
    type: number
    sql: ${TABLE}.ecmli_cal_db ;;
  }

  dimension: ecmli_cal_hits {
    type: number
    sql: ${TABLE}.ecmli_cal_hits ;;
  }

  dimension: ecmli_lambda {
    type: number
    sql: ${TABLE}.ecmli_lambda ;;
  }

  dimension: ecmli_mu {
    type: number
    sql: ${TABLE}.ecmli_mu ;;
  }

  dimension: gathering_cutoff {
    type: number
    sql: ${TABLE}.gathering_cutoff ;;
  }

  dimension: hmm_lambda {
    type: number
    sql: ${TABLE}.hmm_lambda ;;
  }

  dimension: hmm_tau {
    type: number
    sql: ${TABLE}.hmm_tau ;;
  }

  dimension: match_pair_node {
    type: yesno
    sql: ${TABLE}.match_pair_node ;;
  }

  dimension: maxl {
    type: number
    sql: ${TABLE}.maxl ;;
  }

  dimension: noise_cutoff {
    type: number
    sql: ${TABLE}.noise_cutoff ;;
  }

  dimension: num_full {
    type: number
    sql: ${TABLE}.num_full ;;
  }

  dimension: num_genome_seq {
    type: number
    sql: ${TABLE}.num_genome_seq ;;
  }

  dimension: num_refseq {
    type: number
    sql: ${TABLE}.num_refseq ;;
  }

  dimension: num_seed {
    type: number
    sql: ${TABLE}.num_seed ;;
  }

  dimension: number_3d_structures {
    type: number
    sql: ${TABLE}.number_3d_structures ;;
  }

  dimension: number_of_species {
    type: number
    sql: ${TABLE}.number_of_species ;;
  }

  dimension: previous_id {
    type: string
    sql: ${TABLE}.previous_id ;;
  }

  dimension: rfam_acc {
    type: string
    sql: ${TABLE}.rfam_acc ;;
  }

  dimension: rfam_id {
    type: string
    sql: ${TABLE}.rfam_id ;;
  }

  dimension: seed_source {
    type: string
    sql: ${TABLE}.seed_source ;;
  }

  dimension: structure_source {
    type: string
    sql: ${TABLE}.structure_source ;;
  }

  dimension: tax_seed {
    type: string
    sql: ${TABLE}.tax_seed ;;
  }

  dimension: trusted_cutoff {
    type: number
    sql: ${TABLE}.trusted_cutoff ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  dimension_group: updated {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.updated ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
